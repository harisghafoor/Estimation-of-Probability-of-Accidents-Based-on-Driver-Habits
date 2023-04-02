function P_day=accident_prob_day(d,theta,x_times,a,y)
x= [1.26 
 0.91 
 0.77 
 0.77 
 0.91 
 1.05 
 1.33]; 
px=[1 /49
1 /68
1 /80
1 /80
1 /68
1 /59
1 /47];

if d == 01
    z=x(1);
    P_day=px(1);
    [N D]=rat(P_day);
    P_day= (z*N)/(z*N+D);
elseif d==02
     z=x(2);
    P_day=px(2);
    [N D]=rat(P_day);
    P_day= (z*N)/(z*N+D);
elseif d==03
     z=x(3);
    P_day=px(3);
    [N D]=rat(P_day);
    P_day= (z*N)/(z*N+D);
elseif d==04
     z=x(4);
    P_day=px(4);
    [N D]=rat(P_day);
    P_day= (z*N)/(z*N+D);
elseif d==05
    z=x(5);
    P_day=px(5);
    [N D]=rat(P_day);
    P_day= (z*N)/(z*N+D);
elseif d==06
     z=x(6);
    P_day=px(6);
    [N D]=rat(P_day);
    P_day= (z*N)/(z*N+D);
elseif d==07
     z=x(7);
    P_day=px(7);
    [N D]=rat(P_day);
    P_day= (z*N)/(z*N+D);
end
% Comparing the theta and a.
for l=1:length(y)
    m=a(l,:);
    if theta==m
        o=l
    end
end
if y(o)==0
    xz=1;
    [N D]=rat(P_day);
    P_day= (xz*N)/(xz*N+D);
else
    xz=y(o)
    [N D]=rat(P_day);
    P_day= (xz*N)/(xz*N+D);
end
end

