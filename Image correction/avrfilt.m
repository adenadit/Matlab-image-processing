I=imread('hbb.jpg');
J=imnoise(I,'salt & pepper');
H=rgb2gray(J);
B=ordfilt2(H,5,true(3)); % order statistic filters
subplot(121),imshow(H);title('the graph before filtering');
subplot(122),imshow(B);title('the graph after filtering');