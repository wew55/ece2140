#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

int batch_input_conv(float*** input, int size_input, int features_input, int numberOfSlice, int size_kernel, int counter, float*** batch, int* PreviousnumberOfLine)
{
	int size_output = size_input - size_kernel + 1;
	int numberOfCalculation = pow(size_output,2);
	int numberOfLine = floor(numberOfSlice / size_output);
	int numberOfBatch = floor(numberOfCalculation / numberOfSlice) + 1;
	int size = 0;
	int begin_batch = 0;
	int end_batch;
	
	if ((numberOfBatch == 1) && (PreviousnumberOfLine[0] == 0))
	{
		for (int i = 0; i < size_input; i++)
		{
			for (int j = 0; j < size_input; j++)
			{
				memcpy(batch[i][j], input[i][j], sizeof(input)*features_input);
			}
		}
		size = size_output;
		PreviousnumberOfLine[0] = 0;
	}
	else if(size_input < numberOfSlice)
	{
		for (int i = 0; i < (counter - 1); i++)
		{
			begin_batch += PreviousnumberOfLine[i];
		}
			end_batch = begin_batch + numberOfLine + size_kernel - 1;
			if (end_batch > size_input)
			{
				end_batch = size_input;
				size = end_batch - begin_batch - size_kernel + 1 ;
			}
			else
			{
				size = numberOfLine;
			}
			for (int i = begin_batch; i < end_batch; i++)
			{
				for (int j = 0; j < size_input; j++)
				{
					memcpy(batch[i-begin_batch][j], input[i][j], sizeof(input)*features_input);
				}
			}
		PreviousnumberOfLine[counter - 1] = numberOfLine;
	}
	else
	{
		printf("this function is not yet implemented \n");
		size = 0;
	}

	return size;
}
	
