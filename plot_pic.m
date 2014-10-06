function [ out ] = plot_pic( pic, fig,tit)
%PLOT_PIC Summary of this function goes here
%   Detailed explanation goes here

figure(fig)
subplot(1,1,1); imagesc(pic); colormap(gray);
title(tit);
end
