clc;
close all;
clear all;
file1=input('\n enter input image file name','s');
file2=input('\n enter output image file name','s');
x=imread(file1);
[r,c,d]=size(x);
fprintf('r=%d c=%d d=%d\n',r,c,d);
imshow(x);
imwrite(x,file2);