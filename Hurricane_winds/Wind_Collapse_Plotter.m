function [Spec_Acc,new_collapse] = Wind_Collapse_Plotter(Collapse_Vel,N)
Sa = sort(Collapse_Vel);
Samin = 1;
Samax = 600;
dSa = (Samax-Samin)/N;
for i = 1:N
    sum1 = 0;
    smin = Samin+(i-1)*dSa;
    smax = Samin+i*dSa;
    for j = 1:max(size(Collapse_Vel))
        if smin<=Collapse_Vel(j) && Collapse_Vel(j)<=smax
            sum1 = sum1+1;
        end
    end
    collapse(i) = sum1;
end
sum1 = 0;
for i = 1:max(size(collapse))
sum1 = sum1 + collapse(i);
new_collapse(i) = sum1;
end
new_collapse = new_collapse/max(size(Collapse_Vel));
Spec_Acc = Samin:dSa:Samax-dSa;
plot(Spec_Acc,smooth(new_collapse))
end