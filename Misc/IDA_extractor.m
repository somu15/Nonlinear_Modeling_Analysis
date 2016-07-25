function [] = IDA_extractor(n,row)
start = strcat(char(row+'A'-1),'2');
for i = 1:n
file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\temp\DriftRoof',num2str(i),'.out');
disp = importdata(file);
roof_drift(i) = max(abs(disp(:,2)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\No SSI\New results\Roof drift_PGA.xlsx',roof_drift,'Far field',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\temp\DriftStorey1_',num2str(i),'.out');
disp = importdata(file);
IDR1(i) = max(abs(disp(:,2)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\No SSI\New results\IDR1_PGA.xlsx',IDR1,'Far field',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\temp\DriftStorey2_',num2str(i),'.out');
disp = importdata(file);
IDR2(i) = max(abs(disp(:,2)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\No SSI\New results\IDR2_PGA.xlsx',IDR2,'Far field',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\temp\DriftStorey3_',num2str(i),'.out');
disp = importdata(file);
IDR3(i) = max(abs(disp(:,2)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\No SSI\New results\IDR3_PGA.xlsx',IDR3,'Far field',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\temp\DriftStorey4_',num2str(i),'.out');
disp = importdata(file);
IDR4(i) = max(abs(disp(:,2)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\No SSI\New results\IDR4_PGA.xlsx',IDR4,'Far field',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\temp\FloorAcc_',num2str(i),'.out');
disp = importdata(file);
FA1(i) = max(abs(disp(:,2)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\No SSI\New results\PFA1_PGA.xlsx',FA1,'Far field',start)
FA2(i) = max(abs(disp(:,3)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\No SSI\New results\PFA2_PGA.xlsx',FA2,'Far field',start)
FA3(i) = max(abs(disp(:,4)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\No SSI\New results\PFA3_PGA.xlsx',FA3,'Far field',start)
FA4(i) = max(abs(disp(:,5)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\No SSI\New results\PFA4_PGA.xlsx',FA4,'Far field',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\temp\FloorVel_',num2str(i),'.out');
disp = importdata(file);
FV1(i) = max(abs(disp(:,2)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\No SSI\New results\PFV1_PGA.xlsx',FV1,'Far field',start)
FV2(i) = max(abs(disp(:,3)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\No SSI\New results\PFV2_PGA.xlsx',FV2,'Far field',start)
FV3(i) = max(abs(disp(:,4)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\No SSI\New results\PFV3_PGA.xlsx',FV3,'Far field',start)
FV4(i) = max(abs(disp(:,5)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\No SSI\New results\PFV4_PGA.xlsx',FV4,'Far field',start)

file = strcat('C:\Users\lakshd5\Documents\Tcl\bin\temp\JointRot_',num2str(i),'.out');
disp = importdata(file);
Joint_rot(i) = max(abs(disp(:,2)));
xlswrite('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Earthquakes\No SSI\New results\JointRot_PGA.xlsx',Joint_rot,'Far field',start)
end
end