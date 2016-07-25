%%plot OWI PBL winds
clear 
clc

g=9.81;%m/s^2
eyelong=-89.225
eyelat=27.69
longconv=98;%1 deg long in km
latconv=111;%1 deg lat in km

%specify grid parameters
fnm='Katrina2005_6days';
fname=[fnm '.win'];%{1} '_Fine.win'];
%fname2=[fnm 'nh.trop'];%{1} 'nh.trop'];
ilat=261;
ilong=361;
nlines=ceil(ilat*ilong/8);
dx=0.05;
dy=0.05;
swlat=18.5;
swlong=-98.;
date=200508250000;
dt=0.25;%hours
dskip=16;%number of 6-hour intervals to skip
skip=(6*dskip)./dt;%number of timesteps to skip
%JIJun13 dec=7;%decimation for vector plotting
dec=21;%decimation for vector plotting

%read wind field - only one time step
%JI Mar 21 2012 cd Output;
fid=fopen(fname,'r');
Awx=textscan(fid,'%f %f %f %f %f %f %f %f',nlines,'headerlines',(2+skip*2*nlines+skip));
Awy=textscan(fid,'%f %f %f %f %f %f %f %f',nlines);
fclose(fid);
wxtemp=[Awx{1} Awx{2} Awx{3} Awx{4} Awx{5} Awx{6} Awx{7} Awx{8}];wxtemp=reshape(wxtemp',nlines*8,1);wxtemp=wxtemp(1:(nlines*8-1));
wytemp=[Awy{1} Awy{2} Awy{3} Awy{4} Awy{5} Awy{6} Awy{7} Awy{8}];wytemp=reshape(wytemp',nlines*8,1);wytemp=wytemp(1:(nlines*8-1));
clear Awx Awy;
%JI Mar 21 2012 cd ..;

%put winds on grid
ct=0;
for j=1:ilat;
    for i=1:ilong;
        ct=ct+1;
        wx(i,j)=wxtemp(ct);
        wy(i,j)=wytemp(ct);
        wmag(i,j)=sqrt(wx(i,j).^2 + wy(i,j).^2);
        y(i,j)=swlat+dy.*(j-1);
        x(i,j)=swlong+dx.*(i-1);
    end;
end;
clear dum;
[dum ilongmax]=max(wmag);
[Vmax ilatmax]=max(dum);
ilongmax=ilongmax(ilatmax);
ilatmax
ilongmax

xx=x(1:dec:ilong,1:dec:ilat);
yy=y(1:dec:ilong,1:dec:ilat);
wxdec=interp2(y,x,wx,yy,xx);
wydec=interp2(y,x,wy,yy,xx);

%v=[0 5 10 15 20 25 30 35 40 45 50];
v=[0 33];
%JIJun13 figure(1);clf;
%JIJul13 add
hFig1=figure(1)
set(hFig1, 'Position', [10 10 239 260])
%JIJun13 end add
%JIJun13 subplot(311),hold on, axis equal
subplot(211),hold on,axis equal,box on
%JIJun13 contourf(x,y,wmag,v);
contourf(x,y,wmag,v);%JIJun13
shading flat
%JIJun13 quiver(xx,yy,wxdec,wydec,1,'k');
quiver(xx,yy,wxdec,wydec,1.,'k'); %JIJun13
%xlabel('Longitude (deg)');ylabel('Latitude (deg)');
colorbar;
%%title(['OWI PBL Wind Field for ' fname(1:11) ' (V (m/s), V_{max} = ' num2str(Vmax,'%6.1f') ' m/s)']);
%JIJun13 title(['Historical H*Wind (2005)'])
Vmax

S=shaperead('/Users/jirish/Dropbox/work/GISmap/nos80k/allus80k.shp','UseGeoCoords',true);
Sinfo=shapeinfo('/Users/jirish/Dropbox/work/GISmap/nos80k/allus80k.shp');
lat={S.Lat};lat=lat{1};
lon={S.Lon};lon=lon{1};
%JIJun13 plot(lon,lat,'-','color',[0.5 0.5 0.5])
%ylim([min(min(y)) max(max(y))]);xlim([min(min(x)) max(max(x))]);
%JIJun13 ylim([28.602741793808 30.84204053386]),xlim([-91.26501487899 -87.29547528751]);%Mary's limits
ylim([24 31.5]),xlim([-95 -83])

%JIJun13 add
clear lat lon
load coastASleath.dat
plot(coastASleath(:,1),coastASleath(:,2),'k','linewidth',1)
load KatrinaTrack.txt
plot(KatrinaTrack(:,2),KatrinaTrack(:,1),'k--','linewidth',2)
text(-94.5,24.5,'a')
%JIJun13 end add


%find radial;
iplot=1;%set to 1 to compute
if iplot==1;
dxrad=x(ilongmax,ilatmax)-eyelong;
dyrad=y(ilongmax,ilatmax)-eyelat;
%x=x(x>=-95 & x<=-83);y=y(x>=-95 & x<=-83);

if (dxrad > dx);
    dyrad=(dyrad/dxrad)*dx;
    dxrad=dx;
    if (dyrad > dy);
        dxrad=(dxrad/dyrad)*dx;
        dyrad=dy;
    end;
end;
xrad=eyelong:dxrad:max(max(x));
yrad=eyelat:dyrad:(eyelat+dyrad*(length(xrad)-1));
if isempty(yrad) == 1;yrad=eyelat.*ones(size(xrad));end;
%JIJun13 plot(xrad,yrad,'k')

wxrad=interp2(y,x,wx,yrad,xrad);
wyrad=interp2(y,x,wy,yrad,xrad);
wmagrad=sqrt(wxrad.^2 + wyrad.^2);
%raddist=sqrt((xrad.*longconv).^2 + (yrad.*latconv).^2);
raddist=sqrt( ((xrad-xrad(1)).*longconv).^2 + ((yrad-yrad(1)).*latconv).^2);
%raddist=abs(raddist-raddist(1))./1000;%in km
%wmagfw=wmagrad-Vf;

%compute normalized U^2
%wnorm=((wmagrad).^2)./dp./g;
%wnorm2=((wmagrad-Vf).^2)./dp./g;
%raddistnorm=raddist./rmax;

figure(1);
%JIJun13 subplot(313),hold on,box on
figure(2),clf,grid on,hold on,box on
plot(raddist(xrad<=-83),wmagrad(xrad<=-83),'-k','LineWidth',1);
%plot(raddist,wmagfw,'r--','LineWidth',2);
%xlabel('radial distance from eye (km)');ylabel('V (m/s; 10-m 30-min) or [V-V_f] in (m/s)');
%JIJun13 xlabel('radial distance from eye (km)');ylabel('V (m/s; 10-m 30-min)');
xlabel('radial distance from eye (km)');ylabel('V (m/s)');
%legend('V','V-V_f','location','NorthEast');
%title(['OWI PBL Wind Radial for ' fname(1:11) ' (V_{max} = ' num2str(Vmax,'%6.1f') ' m/s)']);
%JIJun13 title('Wind radial')
%set(gcf,'PaperOrientation','landscape','PaperPositionMode','manual',...
%    'PaperPosition',[0.25 0.25 10.50 8.00]);
%print -dps2c PBLradials.ps -append
figure(1);

%JI Mar12 figure(3);clf;grid;hold;
%JI Mar12 plot(raddistnorm,wnorm,'LineWidth',2);
%JI Mar12 plot(raddistnorm,wnorm2,'r--','LineWidth',2);
%JI Mar12 xlabel('(radial distance from eye)/R_{max}');ylabel('V^2/(g\Deltap) or (V-V_f)^2/(g\Deltap)');
%JI Mar12 title(['OWI PBL Wind Radial for ' fname(1:11) ' (V_{max} = ' num2str(Vmax,'%6.1f') ' m/s)']);
%JI Mar12 legend('V^2/(g\Deltap)','(V-V_f)^2/(g\Deltap)','location','NorthEast');
%JI Mar12 %set(gcf,'PaperOrientation','landscape','PaperPositionMode','manual',...
%JI Mar12 %    'PaperPosition',[0.25 0.25 10.50 8.00]);
%JI Mar12 %print -dps2c PBLradials.ps -append
end



iplot2=1;
if iplot2==1;
clear
%clear ilat ilong nlines dx dy swlat swlon date dt dskip skip dec fid fnm fname Awx Awy wxtemp wytemp ct wx wy wmag y x dum ilongmax Vmax ilatmax
%clear xx yy wxdec wydec v S Sinfo lat lon

g=9.81;%m/s^2
eyelong=-89.225
eyelat=27.69
longconv=98;%1 deg long in km
latconv=111;%1 deg lat in km

%specify grid parameters
fnm='Kat1886';
fname=[fnm '.win'];%{1} '_Fine.win'];
%fname2=[fnm 'nh.trop'];%{1} 'nh.trop'];
ilat=261;
ilong=361;
nlines=ceil(ilat*ilong/8);
dx=0.05;
dy=0.05;
swlat=18.5;
swlong=-98.;
date=200508250000;
dt=0.25;%hours
dskip=16;%number of 6-hour intervals to skip
skip=(6*dskip)./dt;%number of timesteps to skip
%JIJun13 dec=7;%decimation for vector plotting
dec=21;%decimation for vector plotting

%read wind field - only one time step
%JI Mar 21 2012 cd Output;
fid=fopen(fname,'r');
Awx=textscan(fid,'%f %f %f %f %f %f %f %f',nlines,'headerlines',(2+skip*2*nlines+skip));
Awy=textscan(fid,'%f %f %f %f %f %f %f %f',nlines);
fclose(fid);
wxtemp=[Awx{1} Awx{2} Awx{3} Awx{4} Awx{5} Awx{6} Awx{7} Awx{8}];wxtemp=reshape(wxtemp',nlines*8,1);wxtemp=wxtemp(1:(nlines*8-1));
wytemp=[Awy{1} Awy{2} Awy{3} Awy{4} Awy{5} Awy{6} Awy{7} Awy{8}];wytemp=reshape(wytemp',nlines*8,1);wytemp=wytemp(1:(nlines*8-1));
clear Awx Awy;
%JI Mar 21 2012 cd ..;

%put winds on grid
ct=0;
for j=1:ilat;
    for i=1:ilong;
        ct=ct+1;
        wx(i,j)=wxtemp(ct);
        wy(i,j)=wytemp(ct);
        wmag(i,j)=sqrt(wx(i,j).^2 + wy(i,j).^2);
        y(i,j)=swlat+dy.*(j-1);
        x(i,j)=swlong+dx.*(i-1);
    end;
end;
clear dum;
[dum ilongmax]=max(wmag);
[Vmax ilatmax]=max(dum);
ilongmax=ilongmax(ilatmax);

xx=x(1:dec:ilong,1:dec:ilat);
yy=y(1:dec:ilong,1:dec:ilat);
wxdec=interp2(y,x,wx,yy,xx);
wydec=interp2(y,x,wy,yy,xx);

%v=[0 5 10 15 20 25 30 35 40 45 50];
v=[0 33];
figure(1);
%JIJun13 subplot(312),hold on, axis equal
subplot(212),hold on,axis equal,box on
contourf(x,y,wmag,v);
shading flat %JIJun13
%JIJun13 quiver(xx,yy,wxdec,wydec,1,'k');
quiver(xx,yy,wxdec,wydec,1.,'k');%JIJun13
%xlabel('Longitude (deg)');ylabel('Latitude (deg)');
colorbar;
%%title(['OWI PBL Wind Field for ' fname(1:11) ' (V (m/s), V_{max} = ' num2str(Vmax,'%6.1f') ' m/s)']);
%JIJun13 title(['Estimated c. 1900'])
Vmax

S=shaperead('/Users/jirish/Dropbox/work/GISmap/nos80k/allus80k.shp','UseGeoCoords',true);
Sinfo=shapeinfo('/Users/jirish/Dropbox/work/GISmap/nos80k/allus80k.shp');
lat={S.Lat};lat=lat{1};
lon={S.Lon};lon=lon{1};
%JIJun13plot(lon,lat,'-','color',[0.5 0.5 0.5])
%ylim([min(min(y)) max(max(y))]);xlim([min(min(x)) max(max(x))]);
%JIJun13ylim([28.602741793808 30.84204053386]),xlim([-91.26501487899 -87.29547528751]);%Mary's limits
%JIJun13
ylim([24 31.5]),xlim([-95 -83]) %JIJun13

end

%JIJun13 add
load coastASleath.dat
plot(coastASleath(:,1),coastASleath(:,2),'k','linewidth',1)
load KatrinaTrack.txt
plot(KatrinaTrack(:,2),KatrinaTrack(:,1),'k--','linewidth',2)
text(-94.5,24.5,'b')
%JIJun13 end add


%find radial;
iplot=1;%set to 1 to compute
if iplot==1;
dxrad=x(ilongmax,ilatmax)-eyelong;
dyrad=y(ilongmax,ilatmax)-eyelat;

if (dxrad > dx);
    dyrad=(dyrad/dxrad)*dx;
    dxrad=dx;
    if (dyrad > dy);
        dxrad=(dxrad/dyrad)*dx;
        dyrad=dy;
    end;
end;
xrad=eyelong:dxrad:max(max(x));
yrad=eyelat:dyrad:(eyelat+dyrad*(length(xrad)-1));
if isempty(yrad) == 1;yrad=eyelat.*ones(size(xrad));end;
%JIJun13 plot(xrad,yrad,'k')
%JIJun13 xlim([0 600]),ylim([0 55])

wxrad=interp2(y,x,wx,yrad,xrad);
wyrad=interp2(y,x,wy,yrad,xrad);
wmagrad=sqrt(wxrad.^2 + wyrad.^2);
raddist=sqrt( ((xrad-xrad(1)).*longconv).^2 + ((yrad-yrad(1)).*latconv).^2);

figure(1);
%JIJun13 subplot(313),hold on,box on
figure(2);
plot(raddist(xrad<=-83),wmagrad(xrad<=-83),'--b','LineWidth',1);
plot([0 700],[33 33],'k')
%JIJun13 xlabel('radial distance from eye (km)');ylabel('V (m/s; 10-m 30-min)');
%JIJun13 title('Wind radial')
legend('Historical H*Wind (2005)','Estimated c. 1900','location','northeast')
figure(1);

end


%%FOR CLIMATIC CHANGE PAPER use 84 mm wide (should be extremely close
%%already), 600dpi RGB tif, arial font 8 pt., 1pt min line width