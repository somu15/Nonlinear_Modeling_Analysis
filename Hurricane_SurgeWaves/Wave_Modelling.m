function [time,req_wave,wave_length] = Wave_Modelling(mean_wind,depth)
format long;
% Hurricane waves generator
% Written by Somayajulu (02/06/2016) (MM/DD/YYYY)
% Units: SI
n = 20000; % Number of points
dt = 0.01; % Time interval of discretization, Sec.
T = n*dt; % Time interval between successive wind data points, dt Sec.
df = 1/T; % Frequency increment, Hz
%depth = 3;
g = 9.81;
mean_wind_10m = mean_wind;
%mean_wind_10m = 10+rand*10; % Wind speed at 10 Mt. height
roughness_length = 0.006;
zref = 5;
alpha = 1/log(zref/roughness_length); % Constant in wind power law
mean_wind_5m = mean_wind_10m*(5/10)^alpha; % Wind speed at 5 Mt. height
% fetch = 10;
% JONSWAP parameters
% alpha = 0.076*(g*fetch/mean_wind^2)^(-0.22);
% spectral_peak_freq = 3.5*(g/mean_wind)*(g*fetch/mean_wind^2)^(-0.33);
% gamma = 7*(g*fetch/mean_wind^2)^(-0.143);
% sig_a = 0.07;
% sig_b = 0.09;
%  Bouws et al. (1985a) parametric relations
T_m = 0.781*mean_wind_10m;%0.2517*mean_wind_5m+3.58;
freq_m = 1/T_m;
spectral_peak_freq = freq_m;
wave_length = 1/(freq_m/sqrt(g*depth));
kappa_m = (2*pi/wave_length);
kappa = mean_wind_10m^2/g*kappa_m;
alpha = 0.0078*kappa^(0.49);
gamma = 2.47*kappa^(0.39);
sig_a = 0.07;
sig_b = 0.09;
%
dummy = 0;
freq = (0:n+1)*df;
freq = freq(2:max(size(freq))-1);
time = (0:n+1)*dt;
time = time(2:max(size(time))-1);
Energy = zeros(max(size(freq)),1);
phase = zeros(max(size(freq)),1);
for ii = 1:max(size(freq))
    dummy = dummy+1;
    w_h = 2*pi*freq(ii)*(depth/g)^(1/2);
    if w_h <= 1
        phi = 0.5*w_h^2;
    else
        phi = 1-0.5*(2-w_h)^2;
    end
    if spectral_peak_freq >= freq(ii)
        sig = sig_a;
    else
        sig = sig_b;
    end
    Energy(dummy) = abs(alpha*g^2*freq(ii)^(-5)*(2*pi)^(-4)*phi*exp(-5/4*(freq(ii)/spectral_peak_freq)^(-4))*gamma^(exp(-(freq(ii)/spectral_peak_freq-1)^2/(2*sig^2))));
    phase(ii) = 2*pi*rand-pi;
end
% semilogx(freq,Energy)
% xlabel('Frequency (Hz)')
% ylabel('Energy density (m^2-s)');
strength = sqrt(Energy*df*2);
turb_wave = real(ifft(strength.*exp(i*phase)))*n;
K = fft(turb_wave)/n;
psd = conj(K).*K*T;
% figure()
% semilogx(freq,psd,'blue',freq,Energy,'red','linewidth',1);
% xlabel('Frequency (Hz)')
% ylabel('Power')
% title('Comparison of original and recovered spectrum')
% legend('Recovered spectrum','Original spectrum')
% figure()
% cons(1:600) = depth;
% plot(time(1:600),cons,'cyan','linewidth',3)
% hold on
% plot(time,turb_wave+depth,'red','linewidth',1)
% xlabel('time (sec.)')
% ylabel('Water depth + wave height (m)')
% grid on
 req_wave = turb_wave+depth;
end