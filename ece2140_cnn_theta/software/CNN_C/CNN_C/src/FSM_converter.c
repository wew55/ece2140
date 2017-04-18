#include <stdio.h>
#include <stdbool.h>
/* 	state 0 ==> Idle
   	state 1 ==> First Convolution Layer kernel: 5*5 features: 6
   	state 2 ==> First Pooling Layer kernel: 2*2
	state 3 ==> Second Convolution Layer kernel: 5*5 features: 16
 	state 4 ==> Second Pooling Layer kernel: 2*2
 	state 5 ==> First Fully Connected Layer from 16*5*5 -> 120
	state 6 ==> Second Fully Connected Layer from 120 -> 84
 	state 7 ==> Output layer, Gaussian Connected layer from 84 -> 10
 	state 9 ==> Stall
 */

int FSM_converter (int actual_state, int* previous_state, bool enable, int *output_layer_size, int* counter, int* counter_kernel, int* type, int* kernel_size)
{
	int new_state = 0;
	if (enable==1)
	{
		switch (actual_state) {
			case 0:
				new_state = 1;
				*type = 1; //conv
				break;
			case 1:
				if ((*counter_kernel == 6) && (*output_layer_size == 28))
				{
					new_state = 2;
					*counter = 1;
					*output_layer_size = 0;
					*counter_kernel = 1;
					*type = 2; //pool
					*kernel_size = 2;
				}
				else if (*output_layer_size == 28)
				{
					new_state = actual_state;
					*counter = 1;
					(*counter_kernel)++;
					*output_layer_size = 0;
					*type = 1; //conv
					*kernel_size = 5;
				}
				else
				{
					new_state = actual_state;
					(*counter)++;
					*type = 1; //conv
					*kernel_size = 5;
				}
				break;
			case 2:
				if ((*counter_kernel == 6) && (*output_layer_size == 14))
				{
					new_state = 3;
					*counter = 1;
					*counter_kernel = 1;
					*output_layer_size = 0;
					*type = 1; //conv
					*kernel_size = 5;
				}
				else if (*output_layer_size == 14)
				{
					new_state = actual_state;
					*type = 2; //pool
					*counter = 1;
					*output_layer_size = 0;
					(*counter_kernel)++;
					*kernel_size = 2;
				}
				else
				{
					new_state = actual_state;
					(*counter)++;
					*type = 2; //pool
					*kernel_size = 2;
				}
				break;
			case 3:
				if ((*counter_kernel == 16) && (*output_layer_size == 10))
				{
					new_state = 4;
					*output_layer_size = 0;
					*counter = 1;
					*counter_kernel = 1;
					*type = 2; //pool
					*kernel_size = 2;
				}
				else if (*output_layer_size == 10)
				{
					new_state = actual_state;
					*counter = 1;
					*output_layer_size = 0;
					(*counter_kernel)++;
					*type = 1; //conv
					*kernel_size = 5;
				}
				else
				{
					new_state = actual_state;
					(*counter)++;
					*type = 1; //conv
					*kernel_size = 5;
				}
				break;
			case 4:
				if ((*counter_kernel == 16) && (*output_layer_size == 5))
				{
					new_state = 5;
					*counter = 1;
					*output_layer_size = 0;
					*counter_kernel = 1;
					*type = 3; //fully connected
					*kernel_size = 120;
				}
				else if (*output_layer_size == 5)
				{
					new_state = actual_state;
					*counter = 1;
					*output_layer_size = 0;
					(*counter_kernel)++;
					*type = 2; //pool
					*kernel_size = 2;
				}
				else
				{
					new_state = actual_state;
					(*counter)++;
					*type = 2; //pool
					*kernel_size = 2;
				}
				break;
			case 5:
				if (*output_layer_size == 120)
				{
					new_state = 6;
					*output_layer_size = 0;
					*counter = 1;
					*type = 3; //fully connected
					*kernel_size = 84;
				}
				else
				{
					new_state = actual_state;
					(*counter)++;
					*type = 3; //fully connected
					*kernel_size = 120;
				}
				break;
			case 6:
				if (*output_layer_size == 84)
				{
					new_state = 7;
					*counter = 1;
					*output_layer_size = 0;
					*type = 4; //Gaussian Function
					*kernel_size = 10;
				}
				else
				{
					new_state = actual_state;
					(*counter)++;
					*type = 3; //fully connected
					*kernel_size = 84;
				}
				break;
			case 7:
				if (*output_layer_size == 10)
				{
					new_state = 0;
					*counter = 1;
					*output_layer_size = 0;
					*type = 0; // idle
				}
				else
				{
					new_state = actual_state;
					(*counter)++;
					*type = 4; //Gaussian function
					*kernel_size = 10;
				}
				break;
			case 9: printf("from Stall "); break;
			default:
				new_state = 0;
				*type = 0;
				break;
		}
	}
	else
	{
		new_state = 9;
	}
	*previous_state = actual_state;
	return new_state;
	}
