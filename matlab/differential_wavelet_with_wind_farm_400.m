%% PLOTTING THE FAULT VOLTAGE AND FAULT CURRENT AT DIFFERENT BUSES
% Calulation of Operating energy and Restraining energy using Wavelet

clear
close all
Ts=0.00005;
sim('final_upfc_400kv_wavelet_windfarm_q')
I1 = x5.signals.values;
I1a = I1(:,1);
I1b = I1(:,2);
I1c = I1(:,3);
I4 = x.signals.values;
I4a = I4(:,1);
I4b = I4(:,2);
I4c = I4(:,3);
I7 = x9.signals.values;
I7a = I7(:,1);
I7b = I7(:,2);
I7c = I7(:,3);

%% Wavelet of Phase A current at Bus 1
[C,L] = wavedec(I1a,3,'db4');
cA3 = appcoef(C,L,'db4',3);
cD3 = detcoef(C,L,3);
IB1A = wrcoef('a',C,L,'db4',3);
% t = 0:0.0001:1;
sample = 0:1:10000;
figure(1)
subplot(2,1,1)
plot(sample,I1a,'r','linewidth',2.0)
grid on;
title('Sending end phase A current')
xlabel('Samples')
ylabel('Magnitude of Fault Current at phase A')
subplot(2,1,2)
plot(sample,IB1A,'linewidth',2.0)
grid on;
title('Reconstructed Waveform of sending end phase A current')
xlabel('Samples')
ylabel('Magnitude of Current')

%% Calculation of Wavelet at phase B
[C2,L2] = wavedec(I1b,3,'db4');
cA3b = appcoef(C2,L2,'db4',3);
cD3b = detcoef(C2,L2,3);
IB1B = wrcoef('a',C2,L2,'db4',3);
% t = 0:0.0001:1;
sample = 0:1:10000;
figure(2)
subplot(2,1,1)
plot(sample,I1b,'r','linewidth',2.0)
grid on;
title('Sending end phase B current')
xlabel('Samples')
ylabel('Magnitude of Current at phase B')
subplot(2,1,2)
plot(sample,IB1B,'linewidth',2.0)
grid on;
title('Reconstructed Waveform of sending end phase B current')
xlabel('Samples')
ylabel('Magnitude of Current')

%% Calculation of Wavelet at phase C
[C4,L4] = wavedec(I1c,3,'db4');
cA3c = appcoef(C4,L4,'db4',3);
cD3c = detcoef(C4,L4,3);
IB1C = wrcoef('a',C4,L4,'db4',3);
% t = 0:0.0001:1;
sample = 0:1:10000;
figure(3)
subplot(2,1,1)
plot(sample,I1c,'r','linewidth',2.0)
grid on;
title('Sending end phase C current')
xlabel('Samples')
ylabel('Magnitude of Current at phase C')
subplot(2,1,2)
plot(sample,IB1C,'linewidth',2.0)
grid on;
title('Reconstructed Waveform of sending end phase C current')
xlabel('Samples')
ylabel('Magnitude of Current')

%% Wavelet of phase A current at Bus 4
[C1,L1] = wavedec(I4a,3,'db4');
cAR3 = appcoef(C1,L1,'db4',3);
cDR3 = detcoef(C1,L1,3);
IB4A = wrcoef('a',C1,L1,'db4',3);
% t = 0:0.0001:1;
sample = 0:1:10000;
figure(4)
subplot(2,1,1)
plot(sample,I4a,'r','linewidth',2.0)
grid on;
title('Receiving end phase A current')
xlabel('Samples')
ylabel('Magnitude of Fault Current at phase A')
subplot(2,1,2)
plot(sample,IB4A,'linewidth',2.0)
grid on;
title('Reconstructed Waveform of receiving end phase A current')
xlabel('Samples')
ylabel('Magnitude of Current')

%% Wavelet of phase B current at Bus 4
[C3,L3] = wavedec(I4b,3,'db4');
cAR3b = appcoef(C3,L3,'db4',3);
cDR3b = detcoef(C3,L3,3);
IB4B = wrcoef('a',C3,L3,'db4',3);
% t = 0:0.0001:1;
sample = 0:1:10000;
figure(5)
subplot(2,1,1)
plot(sample,I4b,'r','linewidth',2.0)
grid on;
title('Receiving end phase B current')
xlabel('Samples')
ylabel('Magnitude of Fault Current at phase B')
subplot(2,1,2)
plot(sample,IB4B,'linewidth',2.0)
grid on;
title('Reconstructed Waveform of phase B current at receiving end')
xlabel('Samples')
ylabel('Magnitude of Current')

%% Wavelet of phase C current at Bus 4
[C5,L5] = wavedec(I4c,3,'db4');
cAR3c = appcoef(C5,L5,'db4',3);
cDR3c = detcoef(C5,L5,3);
IB4C = wrcoef('a',C5,L5,'db4',3);
% t = 0:0.0001:1;
sample = 0:1:10000;
figure(6)
subplot(2,1,1)
plot(sample,I4c,'r','linewidth',2.0)
grid on;
title('Receiving end phase C current')
xlabel('Samples')
ylabel('Magnitude of Fault Current at phase C')
subplot(2,1,2)
plot(sample,IB4C,'linewidth',2.0)
grid on;
title('Reconstructed Waveform of phase C current at receiving end')
xlabel('Samples')
ylabel('Magnitude of Current')

%% Wavelet of phase A current at Bus 7
[C11,L11] = wavedec(I7a,3,'db4');
cAW3a = appcoef(C11,L11,'db4',3);
cDW3a = detcoef(C11,L11,3);
IB7A = wrcoef('a',C11,L11,'db4',3);
% t = 0:0.0001:1;
sample = 0:1:10000;
figure(7)
subplot(2,1,1)
plot(sample,I7a,'r','linewidth',2.0)
grid on;
title('Wind farm end phase A current')
xlabel('Samples')
ylabel('Magnitude of Fault Current at phase A')
subplot(2,1,2)
plot(sample,IB7A,'linewidth',2.0)
grid on;
title('Reconstructed Waveform of phase A current at wind farm end')
xlabel('Samples')
ylabel('Magnitude of Current')

%% Wavelet of phase B current at Bus 7
[C12,L12] = wavedec(I7b,3,'db4');
cAW3b = appcoef(C12,L12,'db4',3);
cDW3b = detcoef(C12,L12,3);
IB7B = wrcoef('a',C12,L12,'db4',3);
% t = 0:0.0001:1;
sample = 0:1:10000;
figure(8)
subplot(2,1,1)
plot(sample,I7b,'r','linewidth',2.0)
grid on;
title('Wind farm end phase B current')
xlabel('Samples')
ylabel('Magnitude of Fault Current at phase B')
subplot(2,1,2)
plot(sample,IB7B,'linewidth',2.0)
grid on;
title('Reconstructed Waveform of phase B current at wind farm end')
xlabel('Samples')
ylabel('Magnitude of Current')

%% Wavelet of phase C current at Bus 7
[C13,L13] = wavedec(I7c,3,'db4');
cAW3c = appcoef(C13,L13,'db4',3);
cDW3c = detcoef(C13,L13,3);
IB7C = wrcoef('a',C13,L13,'db4',3);
% t = 0:0.0001:1;
sample = 0:1:10000;
figure(9)
subplot(2,1,1)
plot(sample,I7c,'r','linewidth',2.0)
grid on;
title('Wind farm end phase C current')
xlabel('Samples')
ylabel('Magnitude of Fault Current at phase C')
subplot(2,1,2)
plot(sample,IB7C,'linewidth',2.0)
grid on;
title('Reconstructed Waveform of phase C current at wind farm end')
xlabel('Samples')
ylabel('Magnitude of Current')

%% Calculation of Fundamental Phase A current at sending end
fr = 50;
N = length(I1a);
Ns = 400;
dt = (1/fr/Ns);
w = 2*pi*fr*dt;
sample = 0:1:10000;

n = 0;
for n=1:N
    f(n) = fr;
    w(n) = 2*pi*f(n)*dt;
end

B1 = 0; A1 = 0;

for k=1:Ns
    B1 = B1+(2/Ns)*(IB1A(k)*sin(w(k)*k));
    A1 = A1+(2/Ns)*(IB1A(k)*cos(w(k)*k));
end

for k=(Ns+1):N
    B1 = B1+((2/Ns)*(IB1A(k)-IB1A(k-Ns))*sin(w(k)*k));
    A1 = A1+((2/Ns)*(IB1A(k)-IB1A(k-Ns))*cos(w(k)*k));
    
    fundaIB1A(k) = sqrt(B1^2 + A1^2);
    phase_fundaIB1A(k) = atan(B1/A1)/1;
end

figure(101)
plot(sample,fundaIB1A,'r','linewidth',2.0)
grid on;
title('Magnitude of fundamental current of phase A at sending end vs samples')
xlabel('Samples')
ylabel ('Magnitude fundamental current')

figure(102)
plot(sample,phase_fundaIB1A,'r','linewidth',2.0)
grid on;
title('Phase angles of fundamental current of phase A in radian at sending end vs samples')
xlabel('Samples')
ylabel ('Magnitude fundamental current')
%% Calculation of Fundamental Phase B current at sending end
fr = 50;
N = length(I1a);
Ns = 400;
dt = (1/fr/Ns);
w = 2*pi*fr*dt;
sample = 0:1:10000;

n = 0;
for n=1:N
    f(n) = fr;
    w(n) = 2*pi*f(n)*dt;
end

B1=0; A1=0;

for k=1:Ns
    B1 = B1+(2/Ns)*(IB1B(k)*sin(w(k)*k));
    A1 = A1+(2/Ns)*(IB1B(k)*cos(w(k)*k));
end

for k=(Ns+1):N
    B1 = B1+((2/Ns)*(IB1B(k)-IB1B(k-Ns))*sin(w(k)*k));
    A1 = A1+((2/Ns)*(IB1B(k)-IB1B(k-Ns))*cos(w(k)*k));
    
    fundaIB1B(k) = sqrt(B1^2 + A1^2);
    phase_fundaIB1B(k) = atan(B1/A1)/1;
end
figure(11)
plot(sample,fundaIB1B,'r','linewidth',2.0)
grid on;
title('Magnitude of fundamental current of phase B at sending end vs samples')
xlabel('Samples')
ylabel ('Magnitude fundamental current')

%% Calculation of Fundamental Phase C current at sending end
fr = 50;
N = length(I1a);
Ns = 400;
dt = (1/fr/Ns);
w = 2*pi*fr*dt;
sample = 0:1:10000;

n = 0;
for n=1:N
    f(n) = fr;
    w(n) = 2*pi*f(n)*dt;
end

B1 = 0; A1 = 0;

for k=1:Ns
    B1 = B1+(2/Ns)*(IB1C(k)*sin(w(k)*k));
    A1 = A1+(2/Ns)*(IB1C(k)*cos(w(k)*k));
end

for k=(Ns+1):N
    B1 = B1+((2/Ns)*(IB1C(k)-IB1C(k-Ns))*sin(w(k)*k));
    A1 = A1+((2/Ns)*(IB1C(k)-IB1C(k-Ns))*cos(w(k)*k));
    
    fundaIB1C(k) = sqrt(B1^2 + A1^2);
    phase_fundaIB1C(k) = atan(B1/A1)/1;
end
figure(12)
plot(sample,fundaIB1C,'r','linewidth',2.0)
grid on;
title('Magnitude of fundamental current of phase C at sending end vs samples')
xlabel('Samples')
ylabel ('magnitude fundamental current')

%%
sample = 0:1:10000;
figure(1001)
plot(sample,fundaIB1A,'r','linewidth',2.0)
grid on;
hold on;
plot(sample,fundaIB1B,'b','linewidth',2.0)
plot(sample,fundaIB1C,'g','linewidth',2.0)
title('Magnitude of different phase currents for A-G fault at a distance 100km from substation-1')
xlabel('Samples')
ylabel ('Magnitude fundamental current')
legend('Current in a-phase','Current in b-phase','Current in c-phase');
%% Calculation of Fundamental Phase A current at receiving end
Ns = 400;
B1 = 0;
A1 = 0;
sample = 0:1:10000;

for k=1:Ns
    B1 = B1+(2/Ns)*(IB4A(k)*sin(w(k)*k));
    A1 = A1+(2/Ns)*(IB4A(k)*cos(w(k)*k));
end

for k=(Ns+1):N
    B1 = B1+((2/Ns)*(IB4A(k)-IB4A(k-Ns))*sin(w(k)*k));
    A1 = A1+((2/Ns)*(IB4A(k)-IB4A(k-Ns))*cos(w(k)*k));
    
    fundaIB4A(k) = sqrt(B1^2 + A1^2);
    phase_fundaIB4A(k) = atan(B1/A1)/1;
end
figure(13)
plot(sample,fundaIB4A,'r','linewidth',2.0)
grid on;
title('Magnitude of fundamental current of phase A at receiving end vs samples')
xlabel('Samples')
ylabel ('Magnitude fundamental current')

%% Calculation of Fundamental Phase B current at receiving end
Ns = 400;
B1 = 0;
A1 = 0;
sample = 0:1:10000;

for k=1:Ns
    B1 = B1+(2/Ns)*(IB4B(k)*sin(w(k)*k));
    A1 = A1+(2/Ns)*(IB4B(k)*cos(w(k)*k));
end

for k=(Ns+1):N
    B1 = B1+((2/Ns)*(IB4B(k)-IB4B(k-Ns))*sin(w(k)*k));
    A1 = A1+((2/Ns)*(IB4B(k)-IB4B(k-Ns))*cos(w(k)*k));
    
    fundaIB4B(k) = sqrt(B1^2 + A1^2);
    phase_fundaIB4B(k) = atan(B1/A1)/1;
end
figure(14)
plot(sample,fundaIB4B,'r','linewidth',2.0)
grid on;
title('Magnitude of fundamental current of phase B at receiving end vs samples')
xlabel('Samples')
ylabel ('magnitude fundamental current')

%% Calculation of Fundamental Phase C current at receiving end
Ns = 400;
B1 = 0;
A1 = 0;
sample = 0:1:10000;

for k=1:Ns
    B1 = B1+(2/Ns)*(IB4C(k)*sin(w(k)*k));
    A1 = A1+(2/Ns)*(IB4C(k)*cos(w(k)*k));
end

for k=(Ns+1):N
    B1 = B1+((2/Ns)*(IB4C(k)-IB4C(k-Ns))*sin(w(k)*k));
    A1 = A1+((2/Ns)*(IB4C(k)-IB4C(k-Ns))*cos(w(k)*k));
    
    fundaIB4C(k) = sqrt(B1^2 + A1^2);
    phase_fundaIB4C(k) = atan(B1/A1)/1;
end
figure(15)
plot(sample,fundaIB4B,'r','linewidth',2.0)
grid on;
title('Magnitude of fundamental current of phase C at receiving end vs samples')
xlabel('Samples')
ylabel ('Magnitude fundamental current')

%% Calculation of Fundamental Phase A current at wind farm end
fr = 50;
N = length(I7a);
Ns = 400;
dt = (1/fr/Ns);
w = 2*pi*fr*dt;
sample = 0:1:10000;

n = 0;
for n=1:N
    f(n) = fr;
    w(n) = 2*pi*f(n)*dt;
end

B1 = 0; A1 = 0;
for k=1:Ns
    B1 = B1+(2/Ns)*(IB7A(k)*sin(w(k)*k));
    A1 = A1+(2/Ns)*(IB7A(k)*cos(w(k)*k));
end

for k=(Ns+1):N
    B1 = B1+((2/Ns)*(IB7A(k)-IB7A(k-Ns))*sin(w(k)*k));
    A1 = A1+((2/Ns)*(IB7A(k)-IB7A(k-Ns))*cos(w(k)*k));
    
    fundaIB7A(k) = sqrt(B1^2 + A1^2);
    phase_fundaIB7A(k) = atan(B1/A1)/1;
end
figure(16)
plot(sample,fundaIB7A,'r','linewidth',2.0)
grid on;
title('Magnitude of fundamental current of phase A at wind farm end vs samples')
xlabel('Samples')
ylabel ('Magnitude fundamental current')

%% Calculation of Fundamental Phase B current at wind farm end
fr = 50;
N = length(I7a);
Ns = 400;
dt = (1/fr/Ns);
w = 2*pi*fr*dt;
sample = 0:1:10000;

n = 0;
for n=1:N
    f(n) = fr;
    w(n) = 2*pi*f(n)*dt;
end

B1 = 0; A1 = 0;
for k=1:Ns
    B1 = B1+(2/Ns)*(IB7B(k)*sin(w(k)*k));
    A1 = A1+(2/Ns)*(IB7B(k)*cos(w(k)*k));
end

for k=(Ns+1):N
    B1 = B1+((2/Ns)*(IB7B(k)-IB7B(k-Ns))*sin(w(k)*k));
    A1 = A1+((2/Ns)*(IB7B(k)-IB7B(k-Ns))*cos(w(k)*k));
    
    fundaIB7B(k) = sqrt(B1^2 + A1^2);
    phase_fundaIB7B(k) = atan(B1/A1)/1;
end
figure(17)
plot(sample,fundaIB7B,'r','linewidth',2.0)
grid on;
title('Magnitude of fundamental current of phase B at wind farm end vs samples')
xlabel('Samples')
ylabel ('Magnitude fundamental current')

%% Calculation of Fundamental Phase C current at wind farm end
fr = 50;
N = length(I7a);
Ns = 400;
dt = (1/fr/Ns);
w = 2*pi*fr*dt;
sample = 0:1:10000;

n = 0;
for n=1:N
    f(n) = fr;
    w(n) = 2*pi*f(n)*dt;
end

B1 = 0; A1 = 0;
for k=1:Ns
    B1 = B1+(2/Ns)*(IB7C(k)*sin(w(k)*k));
    A1 = A1+(2/Ns)*(IB7C(k)*cos(w(k)*k));
end

for k=(Ns+1):N
    B1 = B1+((2/Ns)*(IB7C(k)-IB7C(k-Ns))*sin(w(k)*k));
    A1 = A1+((2/Ns)*(IB7C(k)-IB7C(k-Ns))*cos(w(k)*k));
    
    fundaIB7C(k) = sqrt(B1^2 + A1^2);
    phase_fundaIB7C(k) = atan(B1/A1)/1;
end
figure(18)
plot(sample,fundaIB7C,'r','linewidth',2.0)
grid on;
title('Magnitude of fundamental current of phase C at wind farm end vs samples')
xlabel('Samples')
ylabel ('Magnitude fundamental current')

%% Calculation of Restraining amd Operating Current
sample = 0:1:10000;
Iop = (abs((fundaIB1A)-(fundaIB4A)-(fundaIB7A)))*1;
Ires = abs(((fundaIB1A)+(fundaIB4A)+(fundaIB7A))/2);
figure(19)
plot(sample,Iop,'r','linewidth',2)
grid on;
hold on
plot(sample,Ires,'g','linewidth',2)
title('Restraining and Operating fault initiated at 0.6 seconds')
xlabel('Samples')
ylabel('Current')
legend('Operating current','Restraining current')

%% Operating Energy
sample = 0:1:10000;
Eop = Iop.^2;
Eres = Ires.^2;
figure(20)
plot(sample,Eop,'r','linewidth',2)
grid on;
hold on
plot(sample,Eres,'-g','linewidth',2)
title('Operating and Restraining energy with Upfc')
xlabel('Samples')
ylabel('E_o_p, E_r_e_s')
legend('E_o_p','E_r_e_s')

%% Inception angle

fiaval = 0:30:180;
maxEop = [647.4669 616.8989 542.9935 529.9726 598.9155 643.8240 652.3404];
maxEres = [417.4761 394.6032 351.2562 348.8166 386.7594 409.8654 414.3089];
figure(21)
plot(fiaval,maxEop,'--ro','linewidth',2)
grid on;
hold on;
plot(fiaval,maxEres,'--go','linewidth',2)
ylim([0 800])
title('Effect of (FIA) for internal A-G fault on Eopf and Eref')
xlabel('Fault Inception Angle in Degree')
ylabel('E_o_p, E_r_e_s')
legend('E_o_p','E_r_e_s')

%% Fault resistance

rval = 0:5:30;
maxEop1 = [647.4669 704.5450 720.6606 700.8650 663.2898 619.2716 573.5817];
maxEres1 = [417.4761 438.0323 426.4228 396.8592 360.5095 323.7338 288.8172];
figure(22)
plot(rval,maxEop1,'--ro','linewidth',2)
grid on;
hold on;
plot(rval,maxEres1,'--go','linewidth',2)
ylim([0 800])
title('Effect of fault Resistance for internal A-G fault on Eopf and Eref')
xlabel('Fault Resistance in Ohm')
ylabel('E_o_p, E_r_e_s')
legend('E_o_p','E_r_e_s')

%% Wind speed

rval = 5:5:25;
maxEop2 = [653.5536 650.6554 647.4669 646.9655 644.5765];
maxEres2 = [416.5869 416.1191 417.4761 418.8488 419.6424];
figure(23)
plot(rval,maxEop2,'--ro','linewidth',2)
grid on;
hold on;
plot(rval,maxEres2,'--go','linewidth',2)
ylim([0 800])
title('Effect of wind speed for internal A-G fault on Eopf and Eref')
xlabel('Wind Speed in m/s')
ylabel('E_o_p, E_r_e_s')
legend('E_o_p','E_r_e_s')