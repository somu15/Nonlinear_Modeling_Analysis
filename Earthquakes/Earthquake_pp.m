row = importdata('C:\Users\lakshd5\Documents\Tcl\bin\GmRecordNum1.txt')+1;
%n = importdata('C:\Tcl\bin\recordNumber.txt');
%start = strcat(char(row+'A'-1),'2');
start = strcat('B',num2str(row));
file_name = 'C:\Users\lakshd5\Dropbox\Bayesian_IM_selection\Accounting for heteroskedasticity\new_data\All data.xlsx';
for i = 1:1
file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\Pushover\DriftRoof',num2str(i),'.out');
disp = importdata(file);
roof_drift(i) = max(abs(disp(1:max(size(disp))-2,2)));
xlswrite(file_name,roof_drift,'RD',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\Pushover\DriftStorey1_',num2str(i),'.out');
disp = importdata(file);
IDR1(i) = max(abs(disp(1:max(size(disp))-2,2)));
xlswrite(file_name,IDR1,'IDR1',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\Pushover\DriftStorey2_',num2str(i),'.out');
disp = importdata(file);
IDR2(i) = max(abs(disp(1:max(size(disp))-2,2)));
xlswrite(file_name,IDR2,'IDR2',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\Pushover\DriftStorey3_',num2str(i),'.out');
disp = importdata(file);
IDR3(i) = max(abs(disp(1:max(size(disp))-2,2)));
xlswrite(file_name,IDR3,'IDR3',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\Pushover\DriftStorey4_',num2str(i),'.out');
disp = importdata(file);
IDR4(i) = max(abs(disp(1:max(size(disp))-2,2)));
xlswrite(file_name,IDR4,'IDR4',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\Pushover\FloorAcc_',num2str(i),'.out');
disp = importdata(file);
FA1(i) = max(abs(disp(1:max(size(disp))-2,2)));
xlswrite(file_name,FA1,'PFA1',start)
FA2(i) = max(abs(disp(1:max(size(disp))-2,3)));
xlswrite(file_name,FA2,'PFA2',start)
FA3(i) = max(abs(disp(1:max(size(disp))-2,4)));
xlswrite(file_name,FA3,'PFA3',start)
FA4(i) = max(abs(disp(1:max(size(disp))-2,5)));
xlswrite(file_name,FA4,'PFA4',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\Pushover\FloorVel_',num2str(i),'.out');
disp = importdata(file);
FV1(i) = max(abs(disp(1:max(size(disp))-2,2)));
xlswrite(file_name,FV1,'PFV1',start)
FV2(i) = max(abs(disp(1:max(size(disp))-2,3)));
xlswrite(file_name,FV2,'PFV2',start)
FV3(i) = max(abs(disp(1:max(size(disp))-2,4)));
xlswrite(file_name,FV3,'PFV3',start)
FV4(i) = max(abs(disp(1:max(size(disp))-2,5)));
xlswrite(file_name,FV4,'PFV4',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\Pushover\JointRot_',num2str(i),'.out');
disp = importdata(file);
Joint_rot(i) = max(abs(disp(1:max(size(disp))-2,2)));
xlswrite(file_name,Joint_rot,'JR',start)
end
%delete('C:/Tcl/bin/temp/.*out')