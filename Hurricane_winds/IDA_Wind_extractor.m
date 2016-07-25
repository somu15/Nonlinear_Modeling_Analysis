function [max_disp] = IDA_Wind_extractor(n)
max_disp = zeros(1,n);
for i = 1:n
file = strcat('C:\Tcl\bin\temp\DriftRoof',num2str(i),'.out');
disp = importdata(file);
max_disp(i) = max(abs(disp(:,2)));
% if i == 1
%     All = disp;
% else
%     All(:,i+1) = disp(:,2);
% end
end
%xlswrite('C:\Users\lakshd5\Documents\Tcl\bin\results\IDA.xlsx',All,sheet_num)
end