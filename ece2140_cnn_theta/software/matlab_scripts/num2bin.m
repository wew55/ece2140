function bin = num2bin(num,precision,endian)
%num2bin - Convert from number to binary float in string
% Converts from number to binary32 or binary64 IEEE 754 standards.
% Pass 'single' for 32 or 'double' for 64 precision,
% and 'Big' to Big-endian or 'Little' to Little-endian convention.
%
% Syntax:  bin = num2bin(num)
%          bin = num2bin(num,precision,endian)
%
% Inputs:
%        num - matlab number
%  precision - 'single' (default) or 'double' precision
%     endian - endianness convention 'Big' (default) or 'Little'
%
% Outputs:
%        bin - binary float in string
%
%
% See also:  bin2num, dec2bin, dec2base.

% Author: Marco Borges, Ph.D. Student, Computer/Biomedical Engineer
% UFMG, PPGEE, Neurodinamica Lab, Brazil
% email address: marcoafborges@gmail.com
% Website: http://www.cpdee.ufmg.br/
% April 2015; Version: v1; Last revision: 2015-04-28
% Changelog:
%------------------------------- BEGIN CODE -------------------------------
if nargin < 2
    endian = 'Big';
    precision = 'single';
elseif nargin < 3
    endian = 'Big';
end

switch precision
    case 'single'
        s = sprintf('%tx',num);
        if strcmp(endian,'Little')
            s = reshape(fliplr(reshape(s,2,4)),1,8);
        end
        bin = reshape(dec2bin(hex2dec(s'),4)',1,32);
    case 'double'
        s = sprintf('%bx',num);
        if strcmp(endian,'Little')
            s = reshape(fliplr(reshape(s,2,8)),1,16);
        end
        bin = reshape(dec2bin(hex2dec(s'),4)',1,4*16);
end
end
%-------------------------------- END CODE --------------------------------