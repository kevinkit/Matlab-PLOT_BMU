function [ b ] = bv( operator, bild, opt )
%BV Summary of this function goes here
%   Detailed explanation goes here

    b = conv2(operator,bild,opt);

end
