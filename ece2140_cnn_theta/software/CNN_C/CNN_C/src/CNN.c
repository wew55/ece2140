#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include "CNN.h"

int main (int argc, char *argv[])
{	
	// Foundation setup
	// We can lauch the corresponding CNN execution separately
	double percentage;
	int size_test = 0;
	int numberOfGoodPrediction = 0;
	int prediction;
	int predictionTab[49];
	if(argc < 2)
	{
		printf("error in the function call, nothing to do \n");
	}
	else
	{
		if (strcmp(argv[1],"train")==0)
		{

			printf("start training \n");
		}
		else if (strcmp(argv[1],"test")==0)
		{
			printf("start running \n");
			mnist_dataset * dataset;
			size_test = mnist_reader("./mnist/mnist_dataset/t10k-images.idx3-ubyte", "./mnist/mnist_dataset/t10k-labels.idx1-ubyte", &dataset);
			for (int j = 0; j < 49; j++)
			{
			for (int i = j*200; i < (j+1)*200; i++)
			{
				prediction = run_cnn(i, dataset);
				if (prediction == dataset[i].label)
				{
					++numberOfGoodPrediction;
				}
			}
			predictionTab[j] = numberOfGoodPrediction;
			printf("batch %i have %f %% of good prediction \n", j, ((((double)numberOfGoodPrediction) / ((double)200))*100));
			numberOfGoodPrediction = 0;
			}
			for (int i=0; i < 49; i++)
			{
				numberOfGoodPrediction+= predictionTab[i];
			}
			percentage = (((double)numberOfGoodPrediction) / ((double)size_test))*100;
			printf("our network %f %% of good prediction \n", percentage);
		}
		else if (strcmp(argv[1],"inference")==0)
		{
			if ((argc < 3) || (argc > 4))
			{
				printf("wrong function call, please use \"inference\" + a number ");
			}
			else
			{
			mnist_dataset * dataset;
			size_test = mnist_reader("./mnist/mnist_dataset/t10k-images.idx3-ubyte", "./mnist/mnist_dataset/t10k-labels.idx1-ubyte", &dataset);
			prediction = run_cnn(atoi(argv[2]), dataset);
				printf("our prediction %i, the corresponding label %i \n", prediction, dataset[atoi(argv[2])].label);
			}
		}
		else
		{
			printf("not a valid entry \n");
		}
	}
	
}
