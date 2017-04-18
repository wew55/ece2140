function y = bin2hex(x, number)
y = char(zeros(size(x,1), number + 1));
for j = 1:size(x,1)
	for i = 0:number
    	switch (char(x(j,i*4+1:(i+1)*4)))
        	case '0000'
            	y(j,i+1) = '0';
        	case '0001'
            	y(j,i+1) = '1';
        	case '0010'
            	y(j,i+1) = '2';
        	case '0011'
            	y(j,i+1) = '3';
        	case '0100'
            	y(j,i+1) = '4';
        	case '0101'
            	y(j,i+1) = '5';
        	case '0110'
				y(j,i+1) = '6';
        	case '0111'
            	y(j,i+1) = '7';
        	case '1000'
            	y(j,i+1) = '8';
        	case '1001'
            	y(j,i+1) = '9';
        	case '1010'
            	y(j,i+1) = 'a';
        	case '1011'
            	y(j,i+1) = 'b';
        	case '1100'
            	y(j,i+1) = 'c';
        	case '1101'
            	y(j,i+1) = 'd';
        	case '1110'
            	y(j,i+1) = 'e';
        	case '1111'
            	y(j,i+1) = 'f';
        end
    end
end
end
        
        
        
        
