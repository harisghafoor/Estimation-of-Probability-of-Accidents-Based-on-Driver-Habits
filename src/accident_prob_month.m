function P_month=accident_prob_month(m,theta,x_times,a,y)
x=[0.84 
 0.84 
 0.96 
 0.96 
 1.08 
 1.08 
 1.20 
 0.96 
 1.08 
 1.08 
 0.96 
 0.84];
px=[1 /74
2 /74
3 /65
4 /65
5 /57 
6 /57
7 /52
8 /65
9 /57
10 /57
11 /65
12 /74];
if m == 01
    z=x(1);
    P_month=px(1);
    [N D]=rat(P_month);
    P_month= (z*N)/(z*N+D);
elseif m==02
     z=x(2);
    P_month=px(2);
    [N D]=rat(P_month);
    P_month= (z*N)/(z*N+D);
elseif m==03
     z=x(3);
    P_month=px(3);
    [N D]=rat(P_month);
    P_month= (z*N)/(z*N+D);
elseif m==04
     z=x(4);
    P_month=px(4);
    [N D]=rat(P_month);
    P_month= (z*N)/(z*N+D);
elseif m==05
    z=x(5);
    P_month=px(5);
    [N D]=rat(P_month);
    P_month= (z*N)/(z*N+D);
elseif m==06
     z=x(6);
    P_month=px(6);
    [N D]=rat(P_month);
    P_month= (z*N)/(z*N+D);
elseif m==07
     z=x(7);
    P_month=px(7);
    [N D]=rat(P_month);
    P_month= (z*N)/(z*N+D);
elseif m==08
     z=x(8);
    P_month=px(8);
    [N D]=rat(P_month);
    P_month= (z*N)/(z*N+D);
elseif m==09
     z=x(9);
    P_month=px(9);
    [N D]=rat(P_month);
    P_month= (z*N)/(z*N+D);
elseif m==10
    z=x(10);
    P_month=px(10);
    [N D]=rat(P_month);
    P_month= (z*N)/(z*N+D);
elseif m==11
    z=x(11);
    P_month=px(11);
    [N D]=rat(P_month);
    P_month= (z*N)/(z*N+D);
elseif m==12
     z=x(12);
    P_month=px(12);
    [N D]=rat(P_month);
    P_month= (z*N)/(z*N+D);
end
% Comparing the theta and a.
for l=1:length(y)
    vector=a(l,:);
    if theta==vector
        o=l
    end
end
if y(o)==0
    xz=1;
    [N D]=rat(P_month);
    P_month= (xz*N)/(xz*N+D);
else
    xz=y(o)
    [N D]=rat(P_month);
    P_month= (xz*N)/(xz*N+D);
end
end
