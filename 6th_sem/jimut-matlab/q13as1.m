%function s=sum1(n): Function to calculate s=(1)+(1+2)+...+(1+2+...+n)
clc;
close all;
clear all;
n=input('\n Enter n(1-20) = ');
s=sum3(n);
fprintf('\n n=%d sum=%d\n',n,s);

