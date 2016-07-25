function [] = IDA_plotter(drift,Sa)
format long
K = size(drift);
m = K(1);
n = K(2);
for i = 1:max(size(Sa))
    Scaled_Sa(:,i) = Sa(i)*drift(:,1);
end
for i = 2:n
    for j = 2:m
        if drift(j,i) ~= 0
            x(j) = drift(j,i);
            s = j;
        end
    end
    plot(x(1:s),Scaled_Sa(1:s,i-1),'linewidth',1.5)
    hold on
end
xlabel('Roof drift')
ylabel('Sa(1.32s,5%)[g]')
title('IDA results')
end