#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

void fully_connected(float ***input, int row, int column, int features,float *bias, float **kernel, int kernel_number, int kernel_features, char activation_selection, float *output)
{
	int x,y,z,f,i;
	float simple_input[row*column*features];
	float total_output=0.0;
	// Converting 3D input to a 1D array
	for(z=0; z<features; z++){
		for(x=0; x<row; x++){
			for(y=0; y<column; y++){
				simple_input[y+x*column+column*row*z] = input[x][y][z];
			}
		}
	}
	// Computing
	for(f=0;f<kernel_features;f++){
		for(i=0; i<kernel_number; i++){
			output[f] += simple_input[i] * kernel[i][f];
		}
	}
	// Adding the bias and getting total output
	for(i=0;i<kernel_features;i++){
		output[i] = output[i] + bias[i];
		total_output += expf(output[i]);
	}
	// Passing through activation function
	// S for Sigmoid
	// G for Softmax
	// R for ReLU
	if (activation_selection == 'S') {
		for(i=0;i<kernel_features;i++){
			output[i]=1.0/(1+expf(-output[i]));
		}
	}
	else if (activation_selection == 'G'){
		for(i=0;i<kernel_features;i++){
			output[i]=(expf(output[i]))/total_output;
		}
	}
	else if (activation_selection == 'R') {
		for(i=0;i<kernel_features;i++){
			if (output[i] < 0)
			{
				output[i] = 0;
			}
		}
	}
	else{
		printf("no activation function selected!");
	}
}
