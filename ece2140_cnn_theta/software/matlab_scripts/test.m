%S = [1,2,3;4,5,6;7,8,9];
%K = [1,0;1,0];
%b = [1.2];
%for i = 1:3
%    s(:,:,i) = S;
%    k(:,:,i) = K;
%end 
%R = vl_nnconv(S,K,b);
%R1 = vl_nnconv(s,k,b);

image = loadMNISTImages('/home/wen/Documents/caffe/examples/mnist/mnist_matlab/mnist_dataset/t10k-images.idx3-ubyte');
display_network(image(:,2));
j = 1;
A = zeros(28,28,1);
for i = 1:(28*28)
    A(floor(i/28)+1,mod(j,28)+1,1) = single(image(i,1));
    j = j + 1;
end
A = single(A);

csvwrite('A.csv',A);
A2 = vl_nnconv(A, conv1_w, conv1_b, 'pad', 2);
csvwrite('A2.csv',A2);
B = vl_nnpool(A2,2, 'stride',2);
csvwrite('B.csv',B);
C = vl_nnconv(B, conv2_w, conv2_b, 'pad', 0);
csvwrite('C.csv',C);

