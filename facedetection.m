% face detection

a=imread('keluarga.jpeg'); % sample foto 
FaceDetector=vision.CascadeObjectDetector();    % pemangila fungsi face detection
bbox=step(FaceDetector,a);   % membuat bingkai pada target
b=insertObjectAnnotation(a,'rectangle',bbox,'face');    % eksekusi perintah bbox
set(a, 'FontName', 'Arial', 'FontWeight', 'bold', 'FontSize', 12, 'Color', 'black');
imshow(b),title('pendeteksian wajah')
n=size(bbox,1);
 str_n=num2str(n);
str=strcat('number of detected faces',str_n);
 disp(str)