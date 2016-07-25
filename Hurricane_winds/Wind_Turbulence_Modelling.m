%function [req_time,turb_wind_matrix] = Wind_Turbulence_Modelling(data,scale_factor)
% Hurricane winds turbulence generator
%  Written by Somayajulu on 02/04/2016 (MM/DD/YYYY)
%  Inputs required: Number of data points, Time interval of discretization,
%  Roughness length, Integral length... 
%for iii = 1:38
clr
mean_wind = importdata('C:\Tcl\bin\Mean winds.txt');
Scale_factor = importdata('C:\Tcl\bin\Scale factor.txt');
mean_wind = mean_wind*Scale_factor;
n = 90000; % Number of points
dt = 0.01; % Time interval of discretization, Sec.
T = n*dt; % Time interval between successive wind data points, dt Sec.
df = 1/T; % Frequency increment, Hz
karman_const = 0.4;%Yu et al. 2008 page 417


%CONVERT 10 MIN WIND SPEEDS TO 1HR WIND SPEEDS


roughness_length = 0.006;%Yu et al. 2008, upper bound for sea surface 
drag_coeff = (karman_const/log(10/roughness_length))^2;%Yu et al. 2008
%alpha = 1/log(zref/roughness_length);
integral_length = zeros(max(size(mean_wind)),1); % Preallocating ...
%array size for speed
friction_velocity = zeros(max(size(mean_wind)),1); % Preallocating ...
%array size for speed
for ii = 1:max(size(mean_wind))
if ii == 1 || ii == max(size(mean_wind)) 
    integral_length(ii) = 365*(0.23+0.77*0.5*T/3600);
    friction_velocity(ii) = sqrt(drag_coeff*mean_wind(ii)^2); % Nested loop which fills the integral_length and friction_velocity arrays
else
    integral_length(ii) = 365*(0.23+0.77*T/3600);
    friction_velocity(ii) = sqrt(drag_coeff*mean_wind(ii)^2);
end
end
time1 = 0:15*60:105*60;
freq = (0:n+1)*df;
freq = freq(2:max(size(freq))-1);
time = (0:n+1)*dt;
time = time(2:max(size(time))-1);
p1 = -0.00598;
p2 = 0.1544;
p3 = 1.055e-5;
q1 = 0.4458;
q2 = 0.06486;
q3 = 9.754e-5;
spectra = zeros(max(size(freq)),max(size(mean_wind))); % Preallocating ...
%array size for speed
phase = zeros(max(size(freq)),max(size(mean_wind))); % Preallocating ...
%array size for speed
for ii = 1:max(size(mean_wind))
    for j = 1:max(size(freq))
        dummy = freq(j)*integral_length(ii)/mean_wind(ii);
        k = friction_velocity(ii)^2/freq(j)*(p1*dummy^2+p2*dummy+p3)...
            /(dummy^3+q1*dummy^2+q2*dummy+q3);
        if k<0
            spectra(j,ii) = 0; % Some turbulence computations
        else
            spectra(j,ii) = k;
            phase(j,ii) = 2*pi*rand-pi;
        end
    end
end
strength = sqrt(spectra*df*2);
turb_wind = real(ifft(strength.*exp(1i*phase)))*n;
K = fft(turb_wind)/n;
psd = conj(K).*K*T;
siz = size(turb_wind);
resultant_wind = turb_wind;
for ii = 1:siz(2)
    resultant_wind(:,ii) = turb_wind(:,ii)+mean_wind(ii);
end
resultant_wind = reshape(resultant_wind,siz(1)*siz(2),1);
turb_wind = reshape(turb_wind,siz(1)*siz(2),1);
resultant_time = dt:dt:900*max(size(mean_wind));
mag_turb = resultant_wind;
% Some Post-processing commented out
%req_wind = mag_wind;
value = find(mag_turb == max(mag_turb));
if value<15000
    req_wind = resultant_wind(1:30000);
    req_time = resultant_time(1:30000);
elseif value>705000
    req_wind = resultant_wind(705000:720000);
    req_time = resultant_time(705000:720000);
else
    req_wind = resultant_wind(value-15000:value+15000);
    req_time = resultant_time(value-15000:value+15000);
end
clearvars resultant_time turb_wind phase psd strength spectra
req_wind = req_wind(1:30000);
Force51 = 3.4332e-3*req_wind.^2;
Force41 = 6.609e-3*req_wind.^2;
Force31 = 6.176e-3*req_wind.^2;
Force21 = 6.368e-3*req_wind.^2;
Force53 = 1.877e-3*req_wind.^2;
Force43 = 3.754e-3*req_wind.^2;
Force33 = 3.754e-3*req_wind.^2;
Force23 = 4.211e-3*req_wind.^2;

max_wind_turb = max(abs(req_wind));
fid=fopen('C:\Users\lakshd5\Documents\Tcl\bin\Max_turb_wind_speeds.txt','at');
fprintf(fid,'%d %5.2f\n',max_wind_turb);
fclose(fid);

fid = fopen('C:\Users\lakshd5\Documents\Tcl\bin\test_force_21.txt','w');
fprintf(fid,'\n%12.8f\n', Force21);
fclose(fid);

fid = fopen('C:\Users\lakshd5\Documents\Tcl\bin\test_force_31.txt','w');
fprintf(fid,'\n%12.8f\n', Force31);
fclose(fid);

fid = fopen('C:\Users\lakshd5\Documents\Tcl\bin\test_force_41.txt','w');
fprintf(fid,'\n%12.8f\n', Force41);
fclose(fid);

fid = fopen('C:\Users\lakshd5\Documents\Tcl\bin\test_force_51.txt','w');
fprintf(fid,'\n%12.8f\n', Force51);
fclose(fid);

fid = fopen('C:\Users\lakshd5\Documents\Tcl\bin\test_force_23.txt','w');
fprintf(fid,'\n%12.8f\n', Force23);
fclose(fid);

fid = fopen('C:\Users\lakshd5\Documents\Tcl\bin\test_force_33.txt','w');
fprintf(fid,'\n%12.8f\n', Force33);
fclose(fid);

fid = fopen('C:\Users\lakshd5\Documents\Tcl\bin\test_force_43.txt','w');
fprintf(fid,'\n%12.8f\n', Force43);
fclose(fid);

fid = fopen('C:\Users\lakshd5\Documents\Tcl\bin\test_force_53.txt','w');
fprintf(fid,'\n%12.8f\n', Force53);
fclose(fid);
% semilogx(freq,psd(:,8),'red',freq,spectra(:,8),'linewidth',1.5);
% xlabel('Frequency (Hz)')
% ylabel('Power')
% title('Comparison of original and recovered spectrum')
% legend('Recovered spectrum','Original specterum')
% figure()
% plot(time1,mean_wind,'red','linewidth',1.5)
% xlabel('Time (Seconds)')
% ylabel('Wind speed (m/s)')
% hold on
% plot(resultant_time,resultant_wind)
% legend('Mean wind','Mean wind with turbulence')
% hold off
%end
%end






