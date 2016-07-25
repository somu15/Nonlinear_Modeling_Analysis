figure()
clr
disp = importdata('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Foundation\Test analysis\Model verification\New analysis 06052016\Dynamic_SSG04_10\node1032_disp.dat');
reac = importdata('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Foundation\Test analysis\Model verification\New analysis 06052016\Dynamic_SSG04_10\node1032_r_disp.dat');

plot(disp(:,4),reac(:,4)*1e-3,'k','linewidth',8)
axis([-0.016 0.016 -400 400])
grid on
set(gca, 'FontName', 'Times')
set(gca, 'TickLength', [0.5 0.5])
set(gca, 'XTick', [-0.016 -0.006 0 0.006 0.016] )
set(gca, 'YTick', [-400 -200 0 200 400] )
set(gca, 'FontSize', 56)


figure()
plot(disp(:,4),disp(:,3)*1000,'k','linewidth',8)
axis([-0.016 0.016 -50 10])
grid on
set(gca, 'FontName', 'Times')
set(gca, 'TickLength', [0.5 0.5])
set(gca, 'XTick', [-0.016 -0.006 0 0.006 0.016] )
set(gca, 'YTick', [-50 -40 -30 -20 -10 0 10] )
set(gca, 'FontSize', 56)


figure()
plot(disp(:,2)*1000,reac(:,2)*1e-3,'k','linewidth',8)
axis([-8 12 -80 80])
grid on
set(gca, 'FontName', 'Times')
set(gca, 'TickLength', [0.5 0.5])
set(gca, 'XTick', [-8 -4 0 4 8 12] )
set(gca, 'YTick', [-80 -40 0 40 80] )
set(gca, 'FontSize', 56)


figure()
plot(disp(:,2)*1000,disp(:,3)*1000,'k','linewidth',8)
axis([-8 12 -50 10])
grid on
set(gca, 'FontName', 'Times')
set(gca, 'TickLength', [0.5 0.5])
set(gca, 'XTick', [-8 -4 0 4 8 12] )
set(gca, 'YTick', [-50 -40 -30 -20 -10 0 10] )
set(gca, 'FontSize', 56)
