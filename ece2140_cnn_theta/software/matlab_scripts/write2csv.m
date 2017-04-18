%By Wen
%Using matcaffe to extract model 
%Read weights and biases from .caffemodel


% Before running ./matlab, export following paths:

% export LD_LIBRARY_PATH=/opt/intel/mkl/lib/intel64:/usr/local/cuda/lib64
% export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libstdc++.so.6

% cd $CAFFEROOT
% addpath matlab


% model = './examples/mnist/lenet_train_test.prototxt';
% weights = './examples/mnist/lenet_iter_10000.caffemodel';
% net = caffe.Net(model, weights, 'test'); % create net and load weights
% net = caffe.Net(model, weights, 'train'); % create net and load weights



conv1_w=net.layers('conv1').params(1).get_data();
conv1_b=net.layers('conv1').params(2).get_data();

conv2_w=net.layers('conv2').params(1).get_data();
conv2_b=net.layers('conv2').params(2).get_data();

ip1_w=net.layers('ip1').params(1).get_data();
ip1_b=net.layers('ip1').params(2).get_data();

ip2_w=net.layers('ip2').params(1).get_data();
ip2_b=net.layers('ip2').params(2).get_data();

ip3_w=net.layers('ip3').params(1).get_data();
ip3_b=net.layers('ip3').params(2).get_data();

%Save to .csv

csvwrite('./examples/mnist/extracted_model/conv1_w.csv',conv1_w);
csvwrite('./examples/mnist/extracted_model/conv1_b.csv',conv1_b);

csvwrite('./examples/mnist/extracted_model/conv2_w.csv',conv2_w);
csvwrite('./examples/mnist/extracted_model/conv2_b.csv',conv2_b);

csvwrite('./examples/mnist/extracted_model/ip1_w.csv',ip1_w);
csvwrite('./examples/mnist/extracted_model/ip1_b.csv',ip1_b);

csvwrite('./examples/mnist/extracted_model/ip2_w.csv',ip2_w);
csvwrite('./examples/mnist/extracted_model/ip2_b.csv',ip2_b);

csvwrite('./examples/mnist/extracted_model/ip3_w.csv',ip3_w);
csvwrite('./examples/mnist/extracted_model/ip3_b.csv',ip3_b);
