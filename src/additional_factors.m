function [a y]=additional_factors(x)
a= dec2bin(2^6-1:-1:0)-'0'
y=[];
for i=1:length(a)
c=a(i,:)
col=find(c==1)
b=0;
    for j=1:length(col)
        b(j)=[x(col(j))]
    end
y(i)=prod(b);    
end
end