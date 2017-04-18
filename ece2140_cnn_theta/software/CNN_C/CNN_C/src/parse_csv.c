#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int parse_csv(float *****conv_kernel, float **conv_bias, float *** ip_kernel, float ** ip_bias)
{
	char buffer[4194304];
	char *record, *line;
	int i=0;
	int j=0;
	float temp_bias;
	float temp_conv1_w[5][30];
	float temp_conv1_b[6];
	float temp_conv2_w[5][480];
	float temp_conv2_b[16];
	
	float temp_ip1_w[256][256];
	float temp_ip2_w[256][256];
	float temp_ip3_w[84][10];
	
	// relative path for weights, bias for convolution layers
	FILE *fconv1w = fopen("./extracted_model/conv1_w.csv","r");
	FILE *fconv1b = fopen("./extracted_model/conv1_b.csv","r");
	FILE *fconv2w = fopen("./extracted_model/conv2_w.csv","r");
	FILE *fconv2b = fopen("./extracted_model/conv2_b.csv","r");
	
	// relative path for weights, bias for fully_connected layers
	FILE *fp1w = fopen("./extracted_model/ip1_w.csv","r");
	FILE *fp1b = fopen("./extracted_model/ip1_b.csv","r");
	FILE *fp2w = fopen("./extracted_model/ip2_w.csv","r");
	FILE *fp2b = fopen("./extracted_model/ip2_b.csv","r");
	FILE *fp3w = fopen("./extracted_model/ip3_w.csv","r");
	FILE *fp3b = fopen("./extracted_model/ip3_b.csv","r");
	
	// If any of four .csv files are empty, return -1.
	
	if(fconv1w == NULL || fconv1b == NULL ||fconv2w == NULL ||fconv2b == NULL
	   || fp1w == NULL || fp1b == NULL || fp2w == NULL || fp2b == NULL || fp3w == NULL || fp3b == NULL)
	{
		printf("\n file opening failed ");
		return -1 ;
	}
	
	// Streaming conv1_w
	while((line=fgets(buffer,sizeof(buffer),fconv1w))!=NULL)
	{
		record = strtok(line,",");
		while(record != NULL)
		{
			temp_conv1_w[i][j++] = atof(record) ;
			record = strtok(NULL,",");
		}
		++i ;
		j = 0;
	}
	i = 0;
	
	
	// Streaming conv1_b
	
	while( fscanf(fconv1b, "%f", &temp_bias) > 0 )
	{
		temp_conv1_b[i]= temp_bias;
		i++;
	}
	
	i = 0;
	j = 0;
	
	// Streaming conv2_w
	while((line=fgets(buffer,sizeof(buffer),fconv2w))!=NULL)
	{
		record = strtok(line,",");
		while(record != NULL)
		{
			temp_conv2_w[i][j++] = atof(record) ;
			record = strtok(NULL,",");
		}
		++i ;
		j = 0;
	}
	i = 0;

	
	// Streaming conv2_b
	
	while( fscanf(fconv2b, "%f", &temp_bias) > 0 )
	{
		temp_conv2_b[i]= temp_bias;
		i++;
	}
	
	i = 0;
	j = 0;
	
	
	for (int i = 0; i < 5; ++i)
	{
		for (int j = 0; j < 30; ++j)
		{
			conv_kernel[i][j%5][0][j/5][0] = temp_conv1_w[i][j];
		}
	}
	
	for (int i = 0; i < 5; ++i)
	{
		for (int j = 0; j < 480; ++j)
		{
			conv_kernel[i][j%5][(j%30)/5][j/30][1] = temp_conv2_w[i][j];
		}
	}
	
	for(int i = 0;i<6;++i)
	{
		conv_bias[i][0] = temp_conv1_b[i];
	}
	
	for(int i = 0;i<16;++i)
	{
		conv_bias[i][1] = temp_conv2_b[i];
	}
	
	
	i = 0;
	j = 0;
	// Streaming p1_w
	while((line=fgets(buffer,sizeof(buffer),fp1w))!=NULL)
	{
		record = strtok(line,",");
		while(record != NULL)
		{
			temp_ip1_w[i][j++] = atof(record) ;
			record = strtok(NULL,",");
		}
		++i ;
		j = 0;
	}
	i = 0;

	// Streaming p1_b
	
	while( fscanf(fp1b, "%f", &temp_bias) > 0 )
	{
		ip_bias[i][0]= temp_bias;
		i++;
	}
	
	i = 0;
	j = 0;
	
	// Streaming p2_w
	while((line=fgets(buffer,sizeof(buffer),fp2w))!=NULL)
	{
		record = strtok(line,",");
		while(record != NULL)
		{
			temp_ip2_w[i][j++] = atof(record) ;
			record = strtok(NULL,",");
		}
		++i ;
		j = 0;
	}
	i = 0;
	
	// Streaming p2_b
	while( fscanf(fp2b, "%f", &temp_bias) > 0 )
	{
		ip_bias[i][1]= temp_bias;
		i++;
		j = 0;
	}
	
	i = 0;
	
	// Streaming p3_w
	while((line=fgets(buffer,sizeof(buffer),fp3w))!=NULL)
	{
		record = strtok(line,",");
		while(record != NULL)
		{
			temp_ip3_w[i][j++] = atof(record) ;
			record = strtok(NULL,",");
		}
		++i ;
		j = 0;
	}
	i = 0;
	
	// Streaming p3_b
	while( fscanf(fp3b, "%f", &temp_bias) > 0 )
	{
		ip_bias[i][2]= temp_bias;
		i++;
	}
	
	i = 0;
	j = 0;
	
	for (int i = 0; i < 256; ++i)
	{
		for (int j = 0; j < 120; ++j)
		{
			ip_kernel[i][j][0] = temp_ip1_w[i][j];
		}
	}
	for (int i = 0; i < 120; ++i)
	{
		for (int j = 0; j < 84; ++j)
		{
			ip_kernel[i][j][1] = temp_ip2_w[i][j];
		}
	}
	for (int i = 0; i < 84; ++i)
	{
		for (int j = 0; j < 10; ++j)
		{
			ip_kernel[i][j][2] = temp_ip3_w[i][j];
		}
	}
	
	
	fclose(fconv1w);
	fclose(fconv1b);
	fclose(fconv2w);
	fclose(fconv2b);
	fclose(fp1w);
	fclose(fp1b);
	fclose(fp2w);
	fclose(fp2b);
	fclose(fp3w);
	fclose(fp3b);
	return 0 ;
}
