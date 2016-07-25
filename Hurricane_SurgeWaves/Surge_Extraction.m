function [interpolated_surge] = Surge_Extraction(lat,long)
data = importdata('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Hurricanes\surge.txt');
coods = importdata('C:\Users\lakshd5\Dropbox\Preliminary Analysis paper\Hurricanes\surge_coods.txt');
dist = zeros(73,1);
for ii = 2:max(size(coods))
dist(ii) = haversine([coods(1,2) coods(1,1)],[coods(ii,2) coods(ii,1)]);
end
dist(1) = 0;
req_dist = haversine([coods(1,2) coods(1,1)],[lat long]);
interpolated_surge = zeros(38,1);
for ii = 1:38
interpolated_surge(ii) = interp1(dist,data(ii,:),req_dist);
end
end
