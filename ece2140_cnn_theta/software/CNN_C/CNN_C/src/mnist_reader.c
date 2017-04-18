#include "CNN.h"
#include <stdio.h>

/*
 * Referred to following sources:
 * 1. http://yann.lecun.com/exdb/mnist/
 * 2. http://stackoverflow.com/questions/8286668/how-to-read-mnist-data-in-c
 * 3. https://github.com/projectgalateia/mnist
 *
 */

unsigned int to_int(char* in){
    unsigned int out = 0;
    for (int i = 0;i<4;++i){
        out<<=8;
        out |= (unsigned char)in[i];
    }
    return out;

}

int mnist_reader(char * image_file, char * label_file, mnist_dataset ** dataset)
{
	FILE *image_fp = fopen(image_file, "rb");
	FILE *label_fp = fopen(label_file, "rb");
    int image_magic_number = 0;
    int label_magic_number = 0;
    int n_images = 0;
    int n_labels = 0;

    int n_rows = 0;
    int n_cols = 0;
	char* temp;
	temp = (char *)malloc(sizeof(char)*4);
	fread(temp, 1, 4, image_fp);
    image_magic_number = to_int(temp);
	fread(temp, 1, 4, label_fp);
    label_magic_number = to_int(temp);
	fread(temp, 1, 4, image_fp);
    n_images = to_int(temp);
	fread(temp, 1, 4, label_fp);
    n_labels = to_int(temp);
	fread(temp, 1, 4, image_fp);
    n_rows = to_int(temp);
	fread(temp, 1, 4, image_fp);
    n_cols = to_int(temp);

	*dataset = (mnist_dataset *)malloc(sizeof(mnist_dataset) * n_images);
    memset(*dataset, 0, n_images* sizeof(mnist_dataset));
	unsigned char temp_image[28*28];

	for (int i = 0;i < n_images;i++) {
		fread(temp_image, 1, n_rows*n_cols, image_fp);
		for (int j = 0;j < n_rows*n_cols;j++) {
			(*dataset)[i].image[j/n_rows+2][j%n_cols+2] = temp_image[j] / 255.0;
		}
		fread(temp, 1, 1, label_fp);
		(*dataset)[i].label = temp[0];
	}
	free(temp);
	fclose(image_fp);
	fclose(label_fp);
	return n_images;
}
