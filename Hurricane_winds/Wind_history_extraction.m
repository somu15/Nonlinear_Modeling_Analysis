% Function for extracting hurricane wind time history at a specified Lat -
% Long.
% Input parameters : .win file containing ADCIRC wind input data, requir - 
% ed Lat and Long.
% Written by Somayajulu (02/26/2016)
function [Wind_U,Wind_V] = Wind_history_extraction()
 prompt = 'Enter the file path along with file name and format. The format should be something like path/filename.win';
 file_path = input(prompt,'s');
 prompt = 'Enter the latitude where wind history is required';
 req_lat = input(prompt);%30.1801
 prompt = 'Enter the longitude where wind history is required';
 req_long = input(prompt);%-85.8050;
 fid = fopen(file_path);
 info_line = fgetl(fid);
 info_line = fgetl(fid);
 identifier = [5 6 3 3 6 6 3];
 variables = {'iLat' 'iLong' 'DX' 'DY' 'SWLat' 'SWLon' 'DT'};
 for ii = 1:7
     if ii ~= 7
     index1  = strfind(info_line,variables{ii});
     index2 = strfind(info_line,variables{ii+1});
     else
     index1  = strfind(info_line,variables{ii});
     index2 = length(info_line)+1;
     end
     if strcmp(info_line(index1+identifier(ii)-1),'=') == 1
     imp_data(ii) = str2double(info_line(index1+identifier(ii):index2-1));
     else
     imp_data(ii) = str2double(info_line(index1+identifier(ii)+1:index2-1)); 
     end
 end
num_lat = imp_data(1);
num_long = imp_data(2);
dlat = imp_data(3);
dlong = imp_data(4);
min_lat = imp_data(5);
min_long = imp_data(6);
max_lat = min_lat+dlat*(num_lat-1);
max_long = min_long+dlong*(num_long-1);
nlines = ceil(num_lat*num_long/8);
if gt(min_lat,req_lat) == 1 || gt(min_long,req_long) == 1 || gt(req_lat,max_lat) == 1 || gt(req_long,max_long) == 1
    display('Entered lat long are not in range')
else
    numb_lat = ceil(abs(req_lat-min_lat)/dlat);
    lat_low = (numb_lat-1)*dlat+min_lat;
    lat_high = lat_low+dlat;
    numb_long = ceil(abs(req_long-min_long)/dlong);
    long_low = (numb_long-1)*dlong+min_long;
    long_high = long_low+dlong;
    [lat_mesh,long_mesh] = meshgrid([lat_low lat_high],[long_low long_high]);
    info_line = fgetl(fid);
    index = 1;
    index1 = 1;
    while  info_line ~= -1
        numb_lat = ceil(abs(req_lat-min_lat)/dlat);
        numb_long = ceil(abs(req_long-min_long)/dlong);
        if index == nlines || index == nlines*2
            dummy1 = str2num(info_line);
            k = size(dummy1);
            dummy2 = zeros(1,8-max(k));
            data1(index,:) = horzcat(dummy1,dummy2);
        else
        data1(index,:) = str2num(info_line);
        end
        info_line = fgetl(fid);
        index = index+1;
        while strcmp(info_line(1),'i') == 1
        row = ceil(numb_lat*numb_long/8);
        column = (1-abs(numb_lat*numb_long/8-ceil(numb_lat*numb_long/8)))*8;
        u1 = data1(row,column);
        if column ~= 8
            u2 = data1(row,column+1);
        else
            u2 = data1(row+1,1);
        end
        row = round(row+361/8);
        column = abs((row+362/8)-round(row+361/8))*8;
        store = column;
        u3 = data1(row,column);
        if column ~= 8
            u4 = data1(row,column+1);
        else
            u4 = data1(row+1,1);
        end
        Wind_U(index1) = interp2(lat_mesh,long_mesh,[u1 u3;u2 u4],req_lat,req_long);
        numb_lat = ceil(abs(req_lat-min_lat)/dlat);
        numb_long = ceil(abs(req_long-min_long)/dlong);
        row = ceil(numb_lat*numb_long/8);
        column = (1-abs(numb_lat*numb_long/8-ceil(numb_lat*numb_long/8)))*8;
        row = row+nlines;
        v1 = data1(row,column);
        if column ~= 8
            v2 = data1(row,column+1);
        else
            v2 = data1(row+1,1);
        end
        row = ceil(row+361/8);
        column = store;
        v3 = data1(row,column);
        if column ~= 8
            v4 = data1(row,column+1);
        else
            v4 = data1(row+1,1);
        end
        Wind_V(index1) = interp2(lat_mesh,long_mesh,[v1 v3;v2 v4],req_lat,req_long);
        clear data1;
        info_line = fgetl(fid);
        index = 1;
        index1 = index1+1;
        end
    end  
fclose('all');
end

