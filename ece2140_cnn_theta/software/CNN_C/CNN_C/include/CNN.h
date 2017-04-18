#ifndef CNN
#define CNN

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


typedef struct mnist_dataset {
	int label;
	float image[32][32];
} mnist_dataset;

int mnist_reader(char * image_file, char * label_file, mnist_dataset ** image);

int run_cnn (int index, mnist_dataset* dataset);

int FSM_converter (int actual_state, int* previous_state, bool enable, int *output_layer_size, int* counter, int* counter_kernel, int* type, int* kernel_size);

int batch_input_conv(float*** input, int size_input, int features_input, int numberOfSlice, int size_kernel, int counter, float*** batch, int* PreviousnumberOfLine);

int batch_input_pool(float*** input, int size_input, int numberOfSlice, int size_kernel, int counter, float*** batch, int features);

void FloatToFile (char* file_name, float*** matrix, int row, int col, int depth);

void FileToFloat(char* file_name, float*** matrix, int row, int col, int depth);

void convolution(float*** input, int row, int column, int features, float*** kernel, int kernel_row, int kernel_column, int kernel_feature, float** output);

int parse_csv(float *****conv_kernel, float **conv_bias, float *** ip_kernel, float ** ip_bias);

void pooling(float*** output, int row, int column, int pool_rows, int pool_columns, float** pool_output);

int max (float* array, int size);


void activiation(int kernel_features, float* final, char activation_selection);

void fully_connected(float ***input, int row, int column, int features,float *bias, float **kernel, int kernel_number, int kernel_features, char activation_selection, float *output);

#endif
