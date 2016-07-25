clr
data = importdata('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Hurricanes\Wind data\Wind_data.txt');
%time = 1:20001;
store_winds = zeros(7200,38);
store_waves = zeros(2000,38);
for ii = 1:38
mean_wind = data(2*ii,:);
req_wind = Wind_Turbulence_Modelling(mean_wind,1);
req_wave = Wave_Modelling(mean(mean_wind),5);
time = 1:1:max(size(req_wind))*1;
time1 = 0.1:0.1:max(size(req_wave))*0.1;
figure(1)
plot(time,req_wind)
hold on
store_winds(:,ii) = req_wind(1:7200);
figure(2)
plot(time1,req_wave)
hold on
store_waves(:,ii) = req_wave(1:2000);
end
figure(1)
axis tight
xlabel('Time (sec)')
ylabel('Wind velocity (m/s)')
grid on
figure(2)
axis tight
xlabel('Time (sec)')
ylabel('Wave height + depth')
grid on