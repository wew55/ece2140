#include <stdio.h>
#include <stdlib.h>
#include <string.h>


void convolution(float*** input, int row, int column, int features, float*** kernel, int kernel_row, int kernel_column, int kernel_feature, float** output)
{
	// Convolution output is 2D
	int stride = 1;
	int output_row = ((row - kernel_row)/stride) + 1;
	int output_column = ((column - kernel_column)/stride) + 1;
	
	int x,y,z,kx,ky;
	float output_3d[output_row][output_column][features];
	memset(output_3d, 0, sizeof(output_3d));

	//convolution starts here
	for(z=0; z<features; z++){							//loop over layers
		for(x=0; x<output_row; x++){					//loop over rows
			for(y=0; y<output_column; y++){				//loop over column
				for(kx=0; kx<kernel_row; kx++){			//loop over kernel window
					for(ky=0; ky<kernel_column; ky++){
						output_3d[x][y][z] += input[x*stride+kx][y*stride+ky][z] * kernel[kx][ky][z];
						}
				}
			}
		}
	}
	//converting 3D output to 2D by summation through input features map
	for(x=0; x<output_row; x++){
		for(y=0; y<output_column; y++){
			output[x][y] = 0;
			for(z=0; z<features; z++){
				output[x][y] += output_3d[x][y][z];
			}
		}
	}
}
