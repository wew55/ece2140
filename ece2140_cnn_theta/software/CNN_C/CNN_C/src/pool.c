#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

void pooling(float*** output, int row, int column, int pool_rows, int pool_columns, float** pool_output){
	
	int stride = 2;
	float max = -10;
	int output_rows = ((row - pool_rows)/stride) + 1;
	int output_columns = ((column - pool_columns)/stride) + 1;
	int x,y,kx,ky;
	
	for(x=0; x<output_rows; x++){				    //loop over rows
		for(y=0; y<output_columns; y++){			//loop over column
			for(kx=0; kx<pool_rows; kx++){			//loop over kernel window
				for(ky=0; ky<pool_columns; ky++){
					// taking the maximum value
					if(max < output[x*stride+kx][y*stride+ky][0])
						max = output[x*stride+kx][y*stride+ky][0];
				}
			}
			pool_output[x][y] = max;
			max = -10;
		}
	}
}
