%%

close all;
clear all;

first_ring(1:30,1:30) = 0;
second_ring(1:30,1:30) = 0;
first_ring(4,5) = 1;
first_ring(5,4) = 1;
first_ring(5,6) = 1;
first_ring(6,5) = 1;



first_ring = awgn(first_ring,.01,'measured');



second_ring(10,10) = 1;
second_ring(11,11) = 1;
second_ring(12,12) = 1;
second_ring(13,13) = 1;
second_ring(14,14) = 1;

second_ring(11,9) = 1;
second_ring(12,8) = 1;
second_ring(13,7) = 1;
second_ring(14,6) = 1;

second_ring(15,7) = 1;
second_ring(16,8) = 1;
second_ring(17,9) = 1;
second_ring(18,10) = 1;

second_ring(15,13) = 1;
second_ring(16,12) = 1;
second_ring(17,11) = 1;
second_ring(18,10) = 1;

second_ring = awgn(second_ring,.01,'measured');

Image = first_ring + second_ring;

first_detected = conv2(Image,first_ring);
second_detected = conv2(Image,second_ring);


figure;subplot(3,2,1);
imagesc(first_ring);
subplot(3,2,2)
imagesc(second_ring);

subplot(3,2,3:4)
imagesc(Image);

subplot(3,2,5)
imagesc(first_detected)

subplot(3,2,6)
imagesc(second_detected)










