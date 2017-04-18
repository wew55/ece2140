

#include <stdio.h>

void FloatToFile (char* file_name, float*** matrix, int row, int col, int depth)
{
	FILE *input_file = NULL;
	
	input_file = fopen (file_name, "w");
	if (input_file != NULL)
	{
		for (int k = 0; k < depth; k++)
		{
			for (int i = 0; i < row; i++)
			{
				for (int j = 0; j < col; j++)
				{
					fprintf(input_file,"%f ", matrix[i][j][k]);
				}
				fprintf(input_file,"\n");
			}
			fprintf(input_file,"\n");
		}
	}
	else
	{
		printf("error when writting the file \n");
	}
	fclose(input_file);
}
