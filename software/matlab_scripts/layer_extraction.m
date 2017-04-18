function [] = layer_extraction()

fileID_OUT_DATA = fopen ('layer_test_vhdl/first_convolution_in.txt', 'w');
fileID_OUT_DATA_TH = fopen ('layer_test_vhdl/first_convolution_out.txt', 'w');
fileID_OUT_DATA_POOL_TH = fopen ('layer_test_vhdl/first_pooling_out.txt', 'w');
fileID_OUT_WEIGHT = fopen ('layer_test_vhdl/first_convolution_weight.txt', 'w');
fileID_OUT_BIAS = fopen ('layer_test_vhdl/first_convolution_bias.txt', 'w');
q = quantizer([16, 12]);

layer1 = importdata('/Users/thibaut/Documents/Pitt/Spring17/SoC/layer/3');
layer2 = importdata('/Users/thibaut/Documents/Pitt/Spring17/SoC/layer/4');
layer3 = importdata('/Users/thibaut/Documents/Pitt/Spring17/SoC/layer/5');

W_temp = csvread('/Users/thibaut/Documents/Pitt/Spring17/SoC/extracted_model/conv2_w.csv');
W = ones(3,3,6,16);
for k = 0:15
for j=0:29
    for i=0:4
         W(i+1,mod(j,5)+1,floor(j/5)+1, k+1) = W_temp(i+1,30*k+(j+1));
    end
end
end
Bias = csvread('/Users/thibaut/Documents/Pitt/Spring17/SoC/extracted_model/conv2_b.csv');

for i = 1:size(layer1,1) 
    for j = 1:size(layer1,2)
        Bin = num2bin(q, layer1(i,j));
        X = bin2hex(Bin,3);
        fprintf(fileID_OUT_DATA, '%s \n', X);
    end 
end 
for i = 1:size(Bias,1) 
    Bin = num2bin(q, Bias(i));
    X = bin2hex(Bin,3);
    fprintf(fileID_OUT_BIAS, '%s \n', X);
end 
for l=1:size(W,4)
     for k= 1:size(W,3)
         for j= 1:size(W,2)
            for i = 1:size(W,1)
                Bin = num2bin(q, W(i,j,k,l));
                X = bin2hex(Bin,3);
                fprintf(fileID_OUT_WEIGHT, '%s \n', X);
            end
        end
    end
end 

for i = 1:size(layer1,1) 
    for j = 1:size(layer1,2)
        Bin = num2bin(q, layer1(i,j));
        X = bin2hex(Bin,3);
        fprintf(fileID_OUT_DATA, '%s \n', X);
    end 
end 

for i = 1:size(layer2,1) 
    for j = 1:size(layer2,2)
        Bin = num2bin(q, layer2(i,j));
        X = bin2hex(Bin,3);
        fprintf(fileID_OUT_DATA_TH, '%s \n', X);
    end 
end 

for i = 1:size(layer3,1) 
    for j = 1:size(layer3,2)
        Bin = num2bin(q, layer3(i,j));
        X = bin2hex(Bin,3);
        fprintf(fileID_OUT_DATA_POOL_TH, '%s \n', X);
    end 
end 

