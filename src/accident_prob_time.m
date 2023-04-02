function P_time=accident_prob_time(t,theta,x_times,a,y)
if t>=0 & t<3.00
    x=1.04;
    P_time=1/60;
    [N D]=rat(P_time);
    P_time= (x*N)/(x*N+D);
elseif t>=3.00 & t<6.00
     x=0.64;
    P_time=1/96;
    [N D]=rat(P_time);
    P_time= (x*N)/(x*N+D);
elseif t>=6.00 & t<9.00
     x=0.88;
    P_time=1/70;
    [N D]=rat(P_time);
    P_time= (x*N)/(x*N+D);
elseif t>=9.00 & t<12.00
     x=0.64;
    P_time=1/96;
    [N D]=rat(P_time);
    P_time= (x*N)/(x*N+D);
elseif t>=12.00 & t<15.00
    x=0.88;
    P_time=1/70;
    [N D]=rat(P_time);
    P_time= (x*N)/(x*N+D);
elseif t>=15.00 & t<18.00
     x=1.20;
    P_time=1/52;
    [N D]=rat(P_time);
    P_time= (x*N)/(x*N+D);
elseif t>=18.00 & t<21.00
     x=1.44;
    P_time=1/43;
    [N D]=rat(P_time);
    P_time= (x*N)/(x*N+D);
elseif t>=21.00 & t < 24.00
     x=1.28;
    P_time=1/49;
    [N D]=rat(P_time);
    P_time= (x*N)/(x*N+D);
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
    [N D]=rat(P_time);
    P_time= (xz*N)/(xz*N+D);
else
    xz=y(o)
    [N D]=rat(P_time);
    P_time= (xz*N)/(xz*N+D);
end
end
