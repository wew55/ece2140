function x_bin = hex2bin(x)

x_upper = upper(x);
for i=1:size(x,1)
for j=0:size(x,2)-1
    switch x_upper(i,j+1)
        case '0'
            x_bin(i,4*j+1:4*j+4) = '0000';
        case '1'
            x_bin(i,4*j+1:4*j+4) = '0001';
        case '2'
            x_bin(i,4*j+1:4*j+4) = '0010';
        case '3'
            x_bin(i,4*j+1:4*j+4) = '0011';
        case '4'
            x_bin(i,4*j+1:4*j+4) = '0100';
        case '5'
            x_bin(i,4*j+1:4*j+4) = '0101';
        case '6'
            x_bin(i,4*j+1:4*j+4) = '0110';
        case '7'
           x_bin(i,4*j+1:4*j+4) = '0111';
        case '8'
            x_bin(i,4*j+1:4*j+4) = '1000';
        case '9'
            x_bin(i,4*j+1:4*j+4) = '1001';
        case 'A'
            x_bin(i,4*j+1:4*j+4) = '1010';
        case 'B'
            x_bin(i,4*j+1:4*j+4) = '1011';
        case 'C'
            x_bin(i,4*j+1:4*j+4) = '1100';
        case 'D'
            x_bin(i,4*j+1:4*j+4) = '1101';
        case 'E'
            x_bin(i,4*j+1:4*j+4) = '1110';
        case 'F'
            x_bin(i,4*j+1:4*j+4) = '1111';
        otherwise 
            x_bin(i,4*j+1:4*j+4) = '0000';
    end
end        
end 