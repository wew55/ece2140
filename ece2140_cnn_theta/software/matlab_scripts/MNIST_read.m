
fileID = fopen('test_conv','w');
I = importdata('/Users/thibaut/Documents/Pitt/Spring17/SoC/layer/1');
W_temp = csvread('/Users/thibaut/Documents/Pitt/Spring17/SoC/extracted_model/conv1_w.csv');
W = ones(5,5,1,6);
for j=0:29
    for i=0:4
        W(i+1,mod(j,5)+1,1,floor(j/5)+1) = W_temp(i+1,j+1);
    end
end
W2 = ones(5,5,6,16);
W_temp1 = csvread('/Users/thibaut/Documents/Pitt/Spring17/SoC/extracted_model/conv2_w.csv');
for k = 0:15
    for j=0:29
        for i=0:4
            W2(i+1,mod(j,5)+1,floor(j/5)+1, k+1) = W_temp1(i+1,k*j+1);
        end
    end
end
B2 = csvread('/Users/thibaut/Documents/Pitt/Spring17/SoC/extracted_model/conv2_b.csv');
B = csvread('/Users/thibaut/Documents/Pitt/Spring17/SoC/extracted_model/conv1_b.csv');
B0 = [0,0,0,0,0,0];
C = vl_nnconv(I, W, B);
C_wb = vl_nnconv(I, W, B0);
x = I;
M = W;
output_size = (size(x,1) - size(M,1)) + 1;
P=0;
for n=1:size(M,4)
    for i=1:output_size
        for l=1:output_size
            t_start_np = tic;
            for m=1:size(x,3)
                for j=1:size(M,1)
                    for k=1:size(M,1)
                        P=P+(M(j,k,m,n)*x(i+j-1,l+k-1,m));
                    end
                end
            end
        y(i,l,n)=P;
        P=0;
        end
    end
end
y_t=vl_nnconv(x,M,[]);
figure(1) ; clf ; imagesc(x)
figure(2) ; clf ; vl_imarraysc(y)
figure(3) ; clf ; vl_imarraysc(y_t)
D = vl_nnpool(C, 2, 'Method', 'max', 'stride', 2);
for k=1:6
    for i=1:14
        for j=1:14
            fprintf(fileID, '%f ', D(i,j,k));
        end
        fprintf(fileID, '\n');
    end
    fprintf(fileID, '\n');
end
E = vl_nnconv(D, W2, B2);
F = vl_nnpool(E, 2, 'stride', 2);