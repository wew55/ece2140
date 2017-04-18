close all

z = linspace(0,32,512);
q = quantizer([64,11]);
for itr = 512:-1:1
    out(itr) = my_fcn(z(itr));
    binary(itr,:) = num2bin(q,out(itr));
    numb = bin2hex(binary,15);
end
plot(z, out, 'b-');