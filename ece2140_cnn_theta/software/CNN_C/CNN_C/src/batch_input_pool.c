#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

int batch_input_pool(float*** input, int size_input, int numberOfSlice, int size_kernel, int counter, float*** batch, int features)
{
	int size_output = size_input / size_kernel;
	int numberOfCalculation = pow(size_output,2);
	int numberOfLine = numberOfSlice / size_output;
	int numberOfBatch = numberOfCalculation / numberOfSlice + 1;
	int size = 0;
	int begin_batch;
	int end_batch;
	
	if (numberOfBatch==1)
	{
		for (int i = 0; i < size_input; i++)
		{
			for (int j = 0; j < size_input; j++)
			{
				batch[i][j][0] =  input[i][j][features];
			}
		}
		size = size_output;
	}
	else if(size_input < numberOfSlice)
	{
			begin_batch = (counter - 1)*(numberOfLine);
			end_batch = begin_batch + numberOfLine;
			if (end_batch > size_input)
			{
				end_batch = size_input;
				size = (end_batch - begin_batch)/size_kernel ;
			}
			else
			{
				size = numberOfLine/size_kernel;
			}
			for (int i = begin_batch; i < end_batch; i++)
			{
				for (int j = 0; j < size_input; j++)
				{
					batch[i-begin_batch][j][0] =  input[i][j][features];
				}
			}
	}
	else
	{
		printf("this function is not yet implemented \n");
		size = 0;
	}
	return size;
}
	
