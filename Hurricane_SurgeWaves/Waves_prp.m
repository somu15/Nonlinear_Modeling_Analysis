index = importdata('C:\Users\lakshd5\Documents\Tcl\bin\HurricaneNum.txt');
[time_info,data] = Wave_force_extractor(index);
numGMPTS = time_info(1);
dT = time_info(2);
fid1 = fopen('C:\Users\lakshd5\Documents\Tcl\bin\dT_hurr.txt','w');
fprintf(fid1,'%12.8f',dT);
fclose(fid1);
fid2 = fopen('C:\Users\lakshd5\Documents\Tcl\bin\numPTS_hurr.txt','w');
fprintf(fid2,'%12.8f', numGMPTS);
fclose(fid2);
fid3 = fopen('C:\Users\lakshd5\Documents\Tcl\bin\present_record_hurr.txt','wt');
fprintf(fid3,'%12.8f\n', data');
fclose(fid3);
peak_wave = max(abs(data));
file_name = 'C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Hurricanes\Surge\Nonlinear dynamic\Test_07252016\Responses_NoScour_3SF.xlsx';
start = strcat('B',num2str(index+1));
xlswrite(file_name,peak_wave,'Wave',start)