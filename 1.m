clear;
clc;
close all;
addpath('export_fig-master');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EIE579 Assignment 1  
% Name:Cheng Jiyun
% Student ID:2205 5121g
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%v

%% step 1: Initializing the parameters of input signals
student_id = 22103371; % please input your student ID
B = dec2bin(3371,16); % last four digits of your student ID

% define A1,A2,f1,f2
s_id = int2str(student_id);
A1=9; % A1 is the sum of the first four digits of student ID 
A2=9; % A2 is the sum of the last four digits of student ID
f1 = length(find(B=='1')); % f1 is set to be the number of ones
f2 = length(find(B=='0')); %  f2 is set to be the number of zeros


% the input signal is x(t)=3cos(2π*4*t)+18sin(2π*12*t), 0≤t≤1
% plot the input signal image
figure(1)
t=0:0.00001:1;
x=A1*cos(2*pi*f1*t)+A2*sin(2*pi*f2*t);
plot(t,x);
xlabel('t');
ylabel('x(t)');
title('Input Signal');
grid on;
%export_fig('Input Signal.png', '-m2', '-a4', '-transparent')


%% step 2: Sampling
fN=2*max(f1,f2); % Set fN=2max(f1,f2) Hz

%two sampling frequencies: 2fN Hz and fN/2 Hz
fs1=2*fN;
fs2=fN/2;T2=1/fs2;

figure(2)
%For each of the above two sampling rates
%plot all the samples obtained in the time interval 0≤t≤1 in Figure 2
subplot(2,1,1)
T1=1/fs1;
t1=T1*(0:2*fN);
x1=A1*cos(2*pi*f1*t1)+A2*sin(2*pi*f2*t1);
plot(t1,x1);
hold on
scatter(t1,x1,'b','o');
legend('sampled signal','samped value');
hold off
xlabel('t');
ylabel('x1(t)');
title('Sampled Signal with frequency 2fN');
grid on;


subplot(2,1,2)
t2=T2*(0:fN/2);
x2=A1*cos(2*pi*f1*t2)+A2*sin(2*pi*f2*t2);

plot(t2,x2);
hold on
scatter(t2,x2,'b','v');
legend('sampled signal','samped value');
hold off
xlabel('t');
ylabel('x2(t)');
title('Sampled Signal with frequency fN/2');
grid on;
