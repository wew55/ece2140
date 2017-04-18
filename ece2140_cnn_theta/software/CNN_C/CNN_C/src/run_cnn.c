#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "CNN.h"

int run_cnn (int index, mnist_dataset* dataset)
{
	int i = 0;
	
	//For write and read all the different hidden layer
	char* layer_file = "layer/";
	char* layer = malloc(30*sizeof(char));
	strcpy(layer, layer_file);
	char* number = malloc(2*sizeof(char));
	
	//---------Hardware Constraint------------
	int number_DSP_Slice = 6000;
	int available_DSP_Slice = number_DSP_Slice;

	//------------three dimension array input------------
	float*** input;
	
	//------------Hidden layer and kernel------------
	float*** output;
	float** output_temp;
	float* output_fully_connected;
	float *** ip_kernel;
	float ** ip_bias;
	float ***** conv_kernel;
	float ** conv_bias;
	int size_kernel;
	
	//-----------final prediction-----------
	int output_MNIST;
	
	//---------counter and size to keep tracking the division into batch------------
	float*** input_batch;
	float*** kernel;
	float** kernel_fc;
	float* bias_fc;
	int size_line_batch;
	int counter = 0;
	int counter_kernel = 1;
	int output_layer_size = 0;
	int features = 1;
	int layer_size_row = 32;
	int layer_size_col = 32;
	int features_temp;
	int output_layer_size_temp;
	int* line_temp_batch = malloc(10*sizeof(int));
	
	//--------Finite State Machine------------
	/*state 0 ==> Idle
	state 1 ==> First Convolution Layer kernel: 5*5 features: 6
	state 2 ==> First Pooling Layer kernel: 2*2
	state 3 ==> Second Convolution Layer kernel: 5*5 features: 16
	state 4 ==> Second Pooling Layer kernel: 2*2
	state 5 ==> First Fully Connected Layer from 16*5*5 -> 120
	state 6 ==> Second Fully Connected Layer from 120 -> 84
	state 7 ==> Output layer, Softmax Connected layer from 84 -> 10
	state 9 ==> Stall
	type 0 ==> Nothing
	type 1 ==> Convolution
	type 2 ==> Pooling
	type 3 ==> Fully connected (Relu)
	type 4 ==> Fully Connected (Softmax`)*/
	int actual_state = 1;
	int type = 0;
	int previous_state = 0;
	
	//------------Declare float------------
	//Declare input, output, weight and bias dynamically
	input = malloc(120 * sizeof(float **));
	for (int i = 0; i < 120; ++i)
	{
		input[i] = malloc(32 * sizeof(float *));
		for (int j = 0; j < 32; ++j)
		{
			input[i][j] = malloc(16*sizeof(float));
		}
	}
	for (int k =0; k < 1 ; k++)
	{
		for (int j = 0; j < 32; j++)
		{
			for (int i = 0; i < 32; i++)
			{
				input[i][j][k] = dataset[index].image[i][j];
			}
		}
	}
	input_batch = malloc(32 * sizeof(float **));
	for (int i = 0; i < 32; ++i)
	{
		input_batch[i] = malloc(32 * sizeof(float *));
		for (int j = 0; j < 32; ++j)
		{
			input_batch[i][j] = malloc(16*sizeof(float));
		}
	}
	kernel = malloc(5 * sizeof(float **));
	for (int i = 0; i < 5; ++i)
	{
		kernel[i] = malloc(5 * sizeof(float *));
		for (int j = 0; j < 5; ++j)
		{
			kernel[i][j] = malloc(16*sizeof(float));
		}
	}
	output = malloc(120 * sizeof(float **));
	for (int i = 0; i < 120; ++i)
	{
		output[i] = malloc(28 * sizeof(float *));
		for (int j = 0; j < 28; ++j)
		{
			output[i][j] = malloc(16*sizeof(float));
		}
	}
	output_temp = malloc(28 * sizeof(float *));
	for (int j = 0; j < 28; ++j)
	{
		output_temp[j] = malloc(28*sizeof(float));
	}
	
	output_fully_connected = malloc( 128 * sizeof(float));
	
	conv_kernel = malloc(5 * sizeof(float ****));
	for (int i = 0; i < 5; ++i)
	{
		conv_kernel[i] = malloc(5 * sizeof(float ***));
		for (int j = 0; j < 5; ++j)
		{
			conv_kernel[i][j] = malloc(6*sizeof(float **));
			for (int k = 0; k < 6; ++k)
			{
				conv_kernel[i][j][k] = malloc(16*sizeof(float *));
				for(int m = 0; m < 16; ++m)
				{
					conv_kernel[i][j][k][m] = malloc(2*sizeof(float));
				}
			}
		}
	}
	bias_fc = malloc(120*sizeof(float));
	conv_bias = malloc(16* sizeof(float*));
	for(int i = 0;i<16;++i)
	{
		conv_bias[i] = malloc(2*sizeof(float));
	}
	
	ip_kernel = malloc(400 * sizeof(float **));
	for (int i = 0; i < 400; ++i)
	{
		ip_kernel[i] = malloc(120 * sizeof(float *));
		for (int j = 0; j < 120; ++j)
		{
			ip_kernel[i][j] = malloc(3*sizeof(float));
		}
	}
	
	ip_bias = malloc(120* sizeof(float*));
	for(int i = 0;i<120;++i)
	{
		ip_bias[i] = malloc(3*sizeof(float));
	}
	
	kernel_fc = malloc(400* sizeof(float*));
	for(int i = 0;i<400;++i)
	{
		kernel_fc[i] = malloc(120*sizeof(float));
	}
	//----------------------end of dynamic declaration---------------------------------
	
	//-------------------load weight------------
	if(parse_csv(conv_kernel, conv_bias, ip_kernel, ip_bias) == -1) {
		printf("Files cannot be opened!\n");
		}
	sprintf(number, "%d", actual_state);
	strcat(layer, number);
	FloatToFile(layer, input, layer_size_row, layer_size_col, features);
	
	//loop until all layers is completed
	while (actual_state != 0)	
	{
		available_DSP_Slice = number_DSP_Slice;
	do
	{
		features_temp = counter_kernel;
		output_layer_size_temp = output_layer_size;
		actual_state = FSM_converter (actual_state, &previous_state, 1, &output_layer_size, &counter, &counter_kernel, &type, &size_kernel);
		if ((actual_state != previous_state) && (previous_state != 0))
		{
			layer_size_row = output_layer_size_temp;
			features = features_temp;
			strcpy(layer, layer_file);
			sprintf(number, "%d", actual_state);
			strcat(layer, number);
			
			//save the output
			FloatToFile(layer, output, layer_size_row, layer_size_col, features);
			//reload the input
			FileToFloat(layer, input, layer_size_row, layer_size_col, features);
		}
	switch (type) {
		case 0: //wait, nothing to do
			break;
		case 1: //conv
			size_line_batch = batch_input_conv(input, layer_size_row, features, available_DSP_Slice, size_kernel , counter, input_batch, line_temp_batch);
			//load kernel
			for (int i = 0; i < features; i++)
			{
				for (int j = 0; j < size_kernel; j++)
				{
					for (int k = 0; k < size_kernel; k++)
					{
						kernel[k][j][i] = conv_kernel[j][k][i][(counter_kernel - 1)][(actual_state/2)];
					}
				}
			}
			convolution(input_batch, (size_line_batch + size_kernel - 1), layer_size_row , features, kernel, size_kernel, size_kernel, features, output_temp);
			//regroup batch
			for (int i = 0; i < (size_line_batch); i++)
			{
				for (int j = 0; j < (layer_size_row - size_kernel + 1); j++)
				{
					output[output_layer_size+i][j][(counter_kernel - 1)] = output_temp[i][j] + conv_bias[(counter_kernel - 1)][(actual_state/2)];
				}
			}
			output_layer_size+= size_line_batch;
			available_DSP_Slice = available_DSP_Slice - layer_size_row*size_line_batch;
			layer_size_col = output_layer_size;
			break;
		case 2: //pool
			size_line_batch = batch_input_pool(input, layer_size_row, available_DSP_Slice, size_kernel ,counter, input_batch, (counter_kernel - 1));
			pooling(input_batch, 2*size_line_batch, layer_size_row, size_kernel, size_kernel, output_temp);
			//regroup batch
			for (int i = 0; i < (size_line_batch); i++)
			{
				for (int j = 0; j < (layer_size_row / 2); j++)
				{
					output[output_layer_size+i][j][(counter_kernel - 1)] = output_temp[i][j];
				}
			}
			output_layer_size+= size_line_batch;
			available_DSP_Slice = available_DSP_Slice - layer_size_row*size_line_batch;
			layer_size_col = output_layer_size;
			break;
		case 3: //Fully connected
				for (int j = 0; j < (layer_size_col*layer_size_row*features); j++)
				{
					for (int k = 0; k < size_kernel; k++)
					{
						kernel_fc[j][k] = ip_kernel[j][k][(actual_state - 5)];
					}
				}
			for (int i = 0; i < size_kernel; i++)
			{
				bias_fc[i] = ip_bias[i][(actual_state - 5)];
			}
			fully_connected(input, layer_size_row, layer_size_col, features,bias_fc, kernel_fc, (layer_size_row*layer_size_col*features), size_kernel, 'R', output_fully_connected);
			output_layer_size = size_kernel;
			available_DSP_Slice = 0;
			layer_size_col = 1;
			for (int i = 0; i < output_layer_size; i++)
			{
				output[i][0][0] = output_fully_connected[i];
			}
			break;
		case 4: //Softmax
			for (int j = 0; j < (layer_size_col*layer_size_row*features); j++)
			{
				for (int k = 0; k < size_kernel; k++)
				{
					kernel_fc[j][k] = ip_kernel[j][k][(actual_state - 5)];
				}
			}
			for (int i = 0; i < size_kernel; i++)
			{
				bias_fc[i] = ip_bias[i][(actual_state - 5)];
			}
			fully_connected(input, layer_size_row, layer_size_col, features, bias_fc, kernel_fc, (layer_size_row*layer_size_col*features), size_kernel, 'G', output_fully_connected);
			output_layer_size = size_kernel;
			layer_size_col = 1;
			available_DSP_Slice = 0;
			for (int i = 0; i < output_layer_size; i++)
			{
				output[i][0][0] = output_fully_connected[i];
			}
			break;
		default: printf("something goes wrong ... \n"); break;
		}
	}
	while((available_DSP_Slice > layer_size_row) && (actual_state == previous_state));
	i++;
	}
	output_MNIST = max(output_fully_connected, 10);
	free(input);
	free(output);
	free(output_temp);
	free(input_batch);
	free(output_fully_connected);
	free(ip_kernel);
	free(conv_kernel);
	free(ip_bias);
	free(conv_bias);
	return output_MNIST;
}
