%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EIE579 Assignment 1  
% Name:Cheng Jiyun
% Student ID:2205 5121g
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%v
%% step 1
%22055121
%dec2bin(5121)=1010000000001
close all;clear;clc;
A1=9;
f1=3;
A2=9;
f2=13;
t=0:0.0001:1;
x=A1*cos(2*pi*f1*t)+A2*sin(2*pi*f2*t);
figure(1)
plot(t,x);
xlabel('t');
ylabel('x(t)');
title('The original signal with conbination frequency of 13hz and 3hz');


%% step2
fN=2*max(f1,f2);
fs1=2*fN;T1=1/fs1;
fs2=fN/2;T2=1/fs2;

t1=T1*(0:50);
x1=A1*cos(2*pi*f1*t1)+A2*sin(2*pi*f2*t1);

figure(2)
subplot(2,1,1)
plot(t1,x1);
hold on
scatter(t1,x1,'r','o');
legend('sampled signal','samped value');
hold off
xlabel('t');
ylabel('x1(t)');
title('sampled signal at frequency 52HZ');



t2=T2*(0:13);
x2=A1*cos(2*pi*f1*t2)+A2*sin(2*pi*f2*t2);
subplot(2,1,2)
plot(t2,x2);
hold on
scatter(t2,x2,'r','o');
legend('sampled signal','samped value');
hold off
xlabel('t');
ylabel('x2(t)');
title('sampled signal at frequency 13HZ');
