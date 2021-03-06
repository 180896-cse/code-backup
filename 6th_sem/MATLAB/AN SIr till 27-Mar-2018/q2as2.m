%q2as2.m: Write a program to input any RGB image file. Convert the image to
%gray scale image using a formula gray_scale=.2989*R+.587*G+.114*B.
% Club RGB image and gray scale image.
clc;
close all;
clear all;
file1=input('\nEnter your RGB image file name=','s');
file2=input('Enter output image file name=','s');
x=imread(file1);
[r,c,d]=size(x);
y(1:r,1:c,1)=.2989*x(1:r,1:c,1)+.587*x(1:r,1:c,2)+.114*x(1:r,1:c,3);
y1=x; % copying all pixels of RGB to y1
y1(1:r,c+1:2*c,1)=y(1:r,1:c,1);
y1(1:r,c+1:2*c,2)=y(1:r,1:c,1);
y1(1:r,c+1:2*c,3)=y(1:r,1:c,1);
imshow(y1);