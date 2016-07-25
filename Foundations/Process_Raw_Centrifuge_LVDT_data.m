clr
lvdt = importdata('C:\Users\lakshd5\Desktop\Test#3a.prt');
%lvdt = lvdt.data;
sim_disp = importdata('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Foundation\Test analysis\Model verification\New analysis 06052016\SSG02_03\node1032_disp.dat');
sim_reac = importdata('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Foundation\Test analysis\Model verification\New analysis 06052016\SSG02_03\node1032_r_disp.dat');
input_disp = importdata('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Foundation\Test analysis\Model verification\New analysis 06052016\SSG02_03\SSG02-03_0.01sec.txt');

time = lvdt(:,1);
Force = lvdt(:,2);
de1 = 0.05*lvdt(:,3);
de2 = 0.05*lvdt(:,4);
D1 = -0.05*lvdt(:,5);
D2 = -0.05*lvdt(:,6);

d1 = 33;
d2 = 133;
e1 = -30;
e2 = 53;
l = 61.2;
h = 105;
lever = 245;

theta = atan((de1-de2)/(e2-e1));

t1 = tan(theta);
%13357+200:22480+200; 22500
lateral_movement = (t1.^2*e1+t1.*(de1-d1)+D1)./(t1.^2+1);
lateral_movement = lateral_movement-h*sin(theta)+l*cos(theta)-l;
settlement = (t1.^2*d2+t1.*(e1-D2)+de1)./(t1.^2+1);
settlement = settlement-h*cos(theta)-l*sin(theta)+h;
 % in mm
% lateral_movement = (t1.^2*e1+t1.*(de1-d2)+D2)./(t1.^2+1);
% lateral_movement = lateral_movement-h*sin(theta)+l*cos(theta)-l;
% plot(0.1:0.1:2641.4,-smooth(settlement)*20-33.7)
% hold on
% plot(sim_disp(:,1),sim_disp(:,3)*1000)
shear_force = smooth(lvdt(:,2)); % in KN
moment = shear_force*lever*20*1e-3; % in KN-m
figure
plot(0.01:0.01:max(size(input_disp))*0.01,input_disp*1000,'linewidth',6)
grid on
set(gca, 'FontName', 'Times')
set(gca, 'FontSize', 35)
xlabel('Time (sec)')
ylabel('Input displacement (mm)')
figure
plot(0.1:0.1:1271,-smooth(settlement(1:12710))*20,'red',sim_disp(:,1),sim_disp(:,3)*1000,'linewidth',6)
grid on
set(gca, 'FontName', 'Times')
set(gca, 'FontSize', 35)
xlabel('Time (sec)')
ylabel('Settlement (mm)')
legend('Experiment','Simulation')
figure
plot(0.1:0.1:1271,theta(1:12710),'r',sim_disp(:,1),-sim_disp(:,4),'linewidth',6)
grid on
set(gca, 'FontName', 'Times')
set(gca, 'FontSize', 35)
xlabel('Time (sec)')
ylabel('Rotation (rad)')
legend('Experiment','Simulation')
figure
%plot(sim_disp(:,1),sim_disp(:,2)*1000)
plot(0.1:0.1:1271,-smooth(lateral_movement(1:12710))*20,'red',sim_disp(:,1),-sim_disp(:,2)*1000,'linewidth',6)
set(gca, 'FontName', 'Times')
set(gca, 'FontSize', 35)
xlabel('Time (sec)')
ylabel('Lateral disp. (mm)')
legend('Experiment','Simulation')
grid on
figure
plot(0.1:0.1:1271,smooth(shear_force(1:12710),'rloess')*1e-3,'r',sim_reac(:,1),sim_reac(:,2)*1e-3,'linewidth',6)
set(gca, 'FontName', 'Times')
set(gca, 'FontSize', 35)
xlabel('Time (sec)')
ylabel('Shear force (KN)')
legend('Experiment','Simulation')
grid on
figure
plot(0.1:0.1:1271,-smooth(moment(1:12710),'rloess')*1e-3,'r',sim_reac(:,1),sim_reac(:,4)*1e-3,'linewidth',6)
set(gca, 'FontName', 'Times')
set(gca, 'FontSize', 35)
xlabel('Time (sec)')
ylabel('Moment (KN-m)')
legend('Experiment','Simulation')
grid on
