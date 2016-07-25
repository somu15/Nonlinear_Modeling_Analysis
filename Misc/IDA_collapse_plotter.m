function [Spec_Acc,new_collapse] = IDA_collapse_plotter(Sa,N)
Sa = sort(Sa);
Samin = 0.001;
Samax = 3;
dSa = (Samax-Samin)/N;
for i = 1:N
    sum1 = 0;
    smin = Samin+(i-1)*dSa;
    smax = Samin+i*dSa;
    for j = 1:max(size(Sa))
        if smin<=Sa(j) && Sa(j)<=smax
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
new_collapse = new_collapse/max(size(Sa));
Spec_Acc = 0.001:dSa:3-dSa;
plot(Spec_Acc,smooth(new_collapse))
end