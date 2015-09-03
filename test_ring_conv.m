%%

close all;
clear all;



A(1:512,1:512) = 0;


A = create_discrete_ring(512,512,200,201,200);
B = create_discrete_ring(512,512,200,202,200);
C = create_discrete_ring(512,512,200,203,200);
D = create_discrete_ring(512,512,200,204,200);

E = create_discrete_ring(512,512,200,201,180);
F = create_discrete_ring(512,512,200,202,180);
%C = C + create_discrete_ring(512,512,200,203,80);

G = create_discrete_ring(512,512,200,201,140);
H = create_discrete_ring(512,512,200,202,140);
%C = C + create_discrete_ring(512,512,200,203,40);

I = create_discrete_ring(512,512,200,201,120);
J = create_discrete_ring(512,512,200,202,120);
%C = C + create_discrete_ring(512,512,200,203,20);







Image = A + B + C + D + E + F + + G + H + I + J;




A_ring = create_discrete_ring(200,200,200,200,200);
E_ring = create_discrete_ring(180,180,180,180,180);
G_ring = create_discrete_ring(140,140,140,140,140);
I_ring = create_discrete_ring(120,120,120,120,120);


A_c = conv2(Image,A_ring);
E_c = conv2(Image,E_ring);
G_c = conv2(Image,G_ring);
I_c = conv2(Image,I_ring);





figure;
subplot(2,5,1)
imagesc(Image);
title('Test Image');

subplot(2,5,2);
imagesc(A_ring);
title('largest mask');
subplot(2,5,7);
imagesc(A_c);



subplot(2,5,3);
imagesc(E_ring);
title('second larges mask');
subplot(2,5,8);
imagesc(E_c);


subplot(2,5,4);
imagesc(G_ring);
title('smaller mask');
subplot(2,5,9);
imagesc(G_c);

subplot(2,5,5)
imagesc(I_ring);
title('Smallest mask');
subplot(2,5,10);
imagesc(I_c);

suptitle('Comparisons of different masks and their convolution');