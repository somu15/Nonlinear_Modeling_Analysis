clr
surge_dat = importdata('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Hurricanes\Interpoated_surge_30.176376_-85.808370.txt');
for ii = 1:max(size(surge_dat))
    surge = surge_dat(ii);
[time,wave,L] = Wave_Modelling(5+rand*2,surge);
Hdes = max(wave);
neu = 0.75*Hdes;
a1 = 0.6+0.5*(4*pi*surge/L/sinh(4*pi*surge/L))^2;
a3 = 1-(1-1/cosh(2*pi*surge/L));
p1 = 0.5*a1*9.81*Hdes;
p3 = a3*p1;
h1 = surge;
h3 = neu;
L = 4.6;
k1 = p1/Hdes;
k3 = p3/Hdes;
P1 = 0.5*a1*9.81*wave;
P3 = a3*P1;
H1 = surge;
H3 = 0.75*wave;
Lb = 4.6;
RA = P1.*H1/Lb.*(H1/2+Lb-H1)+(P3-P1).*H1/(2*Lb).*(Lb-H1+H1/2)+P3.*H3/(2*Lb).*(2*H3/3+Lb-H1-H3);
Rreq(:,ii) = (0.5*H1.*(P1+P3)+0.5*H3.*P3-RA)*13.65;
end
%plot(time,Rreq*13.65)