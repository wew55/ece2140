#include <stdio.h>

int max (float* array, int size)
{
	int index = -10;
	float max = 0;
	for (int i = 0; i < size; i++)
	{
		if (max < array[i])
		{
			max = array[i];
			index = i;
		}
	}
	return (index);
}
