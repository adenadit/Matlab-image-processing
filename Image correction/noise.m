%noise program

I = imread('hbb.jpg');
I1 = imnoise(I,'gaussian');
I2 = imnoise(I,'salt & pepper');
subplot(1,3,1),imshow(I);% Show the original image
title('orginal image');
subplot(1,3,2),imshow(I1); % add Gaussian noise
title('gaussian image');
subplot(1,3,3),imshow(I2); % Salt and pepper noise
title('salt & pepper');