row = importdata('C:\Users\lakshd5\Documents\Tcl\bin\GmRecordNum.txt')+1;
n = importdata('C:\Users\lakshd5\Documents\Tcl\bin\fileNumber.txt');
%start = strcat(char(row+'A'-1),'2');
start = strcat('B',num2str(row));
for i = 1:n
file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\temp\DriftRoof',num2str(i),'.out');
disp = importdata(file);
roof_drift(i) = max(abs(disp(:,2)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\Nonlinear SSI\Roof drift.xlsx',roof_drift,'Far field',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\temp\DriftStorey1_',num2str(i),'.out');
disp = importdata(file);
IDR1(i) = max(abs(disp(:,2)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\Nonlinear SSI\IDR1.xlsx',IDR1,'Far field',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\temp\DriftStorey2_',num2str(i),'.out');
disp = importdata(file);
IDR2(i) = max(abs(disp(:,2)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\Nonlinear SSI\IDR2.xlsx',IDR2,'Far field',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\temp\DriftStorey3_',num2str(i),'.out');
disp = importdata(file);
IDR3(i) = max(abs(disp(:,2)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\Nonlinear SSI\IDR3.xlsx',IDR3,'Far field',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\temp\DriftStorey4_',num2str(i),'.out');
disp = importdata(file);
IDR4(i) = max(abs(disp(:,2)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\Nonlinear SSI\IDR4.xlsx',IDR4,'Far field',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\temp\FloorAcc_',num2str(i),'.out');
disp = importdata(file);
FA1(i) = max(abs(disp(:,2)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\Nonlinear SSI\PFA1.xlsx',FA1,'Far field',start)
FA2(i) = max(abs(disp(:,3)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\Nonlinear SSI\PFA2.xlsx',FA2,'Far field',start)
FA3(i) = max(abs(disp(:,4)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\Nonlinear SSI\PFA3.xlsx',FA3,'Far field',start)
FA4(i) = max(abs(disp(:,5)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\Nonlinear SSI\PFA4.xlsx',FA4,'Far field',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\temp\FloorVel_',num2str(i),'.out');
disp = importdata(file);
FV1(i) = max(abs(disp(:,2)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\Nonlinear SSI\PFV1.xlsx',FV1,'Far field',start)
FV2(i) = max(abs(disp(:,3)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\Nonlinear SSI\PFV2.xlsx',FV2,'Far field',start)
FV3(i) = max(abs(disp(:,4)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\Nonlinear SSI\PFV3.xlsx',FV3,'Far field',start)
FV4(i) = max(abs(disp(:,5)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\Nonlinear SSI\PFV4.xlsx',FV4,'Far field',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\temp\JointRot_',num2str(i),'.out');
disp = importdata(file);
Joint_rot(i) = max(abs(disp(:,2)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\Nonlinear SSI\JointRot.xlsx',Joint_rot,'Far field',start)
end
%delete('C:/Tcl/bin/temp/.*out')