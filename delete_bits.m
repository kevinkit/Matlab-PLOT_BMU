function [ out ] = delete_bits( pic,delete )
%DELETE_BITS Summary of this function goes here
%   Detailed explanation goes here

x = 1;


    for i=1:delete-1
        x = x*2;
        display(x)
    end
    
   
    
    bit_muster = uint8((255-x)*(ones(size(pic))));
    out = bitand(pic,bit_muster);
    
    
end

