clc
clear 

eo=8.854e-12;  
uo=pi*4e-7;

er1S=72;    
er1G=10;    
er2C=0;    
er2S=12;    
er2G=0.010; 
sigC=5.8e7; 
sigS=4;     
sigG=1e-12; 
er1C=1;     

n=[2:0.1:14];
f=10.^n;
w=2*pi*f;

seffC=sigC+w*er2C*eo;
seffS=sigS+w*er2S*eo;
seffG=sigG+w*er2G*eo;

etaC=sqrt(i*w*uo./(seffC+i*er1C*eo))
etaS=sqrt(i*w*uo./(seffS*er1S*eo))
etaG=sqrt(i*w*uo./(seffG+i*er1G*eo))

magC=abs(etaC);
angC=180*angle(etaC)/pi;
magS=abs(etaS);
angS=180*angle(etaS)/pi;
magG=abs(etaG);
angG=180*angle(etaG)/pi;

subplot(3,2,1)
semilogx(f,magC)
ylabel('mag, ohms')
title('copper')

subplot(3,2,2)
semilogx(f,angC)
ylabel('phase, deg')

subplot(3,2,3)
semilogx(f,magS)
ylabel('mag, ohms')
title('seawater')

subplot(3,2,4)
semilogx(f,angS)
ylabel('phase, deg')

subplot(3,2,5)
semilogx(f,magG)
ylabel('mag, ohms')
xlabel('frequency (Hz)')
title('glass')

subplot(3,2,6)
semilogx(f,angG)
xlabel('frequency (Hz)')
ylabel('phase, deg')
