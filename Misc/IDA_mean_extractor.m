function [result,report_count] = IDA_mean_extractor(drift)
k = size(drift);
drift = drift(2:k(1),2:k(2));
k = size(drift);
for i = 1:k(1)
    sum = 0;
    count = 0;
    for j = 1:k(2)
        sum = sum+drift(i,j);
        if drift(i,j)~=0
            count = count+1;
        end
    end
    result(i) = sum/count;
    report_count(i) = count;
end
end