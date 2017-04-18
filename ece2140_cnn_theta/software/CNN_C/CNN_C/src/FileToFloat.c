#include <stdio.h>
void FileToFloat(char* file_name, float*** matrix, int row, int col, int depth)
{
	FILE *input_file = NULL;

	float myNumber;
	
	input_file = fopen (file_name, "r");

	if (input_file != NULL)
	{
		for (int k = 0; k < depth; k++)
		{
			for (int i = 0; i < row; i++)
			{
				for (int j = 0; j < col; j++)
				{
					fscanf(input_file, "%f", &myNumber);
					matrix[i][j][k] = myNumber;
				}
			}
		}
		fclose(input_file);
	}
	else
	{
		printf("error when reading the file \n");
	}
}
