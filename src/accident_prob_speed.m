function [P_speed grade_speed grad_speed_char]=accident_prob_speed(s,speed_limit,theta,x_times,a,y)
sl=[speed_limit speed_limit+10 speed_limit+20 speed_limit+30 speed_limit+40 speed_limit+50];
x=[1.05 
 1.10 
 1.22 
 1.56 
 3.57 
];
px=[1/59
1/57
1/51
1/40
1/18];
if s>=sl(1) & s<=sl(2)
    z=x(1);
    P_speed=px(1);
    [N D]=rat(P_speed);
    P_speed= (z*N)/(z*N+D);
    grade_speed=4.00;
    grad_speed_char='A';
elseif s >=sl(2) & s<=sl(3)
    z=x(2);
    P_speed=px(2);
    [N D]=rat(P_speed);
    P_speed= (z*N)/(z*N+D);
    grade_speed=3.00;
    grad_speed_char='B';
elseif s>=sl(3) & s<=sl(4)
    z=x(3);
    P_speed=px(3);
    [N D]=rat(P_speed);
    P_speed= (z*N)/(z*N+D);
    grade_speed=2.00;
    grad_speed_char='C';
elseif s>=sl(4) & s<=sl(5)
    z=x(4);
    P_speed=px(4);
    [N D]=rat(P_speed);
    P_speed= (z*N)/(z*N+D);
    grade_speed=1.00;
    grad_speed_char='D';    
elseif s>=sl(5)
    z=x(5);
    P_speed=px(5);
    [N D]=rat(P_speed);
    P_speed= (z*N)/(z*N+D);
    grade_speed=0.00;
    grad_speed_char='F';
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
    [N D]=rat(P_speed);
    P_speed= (xz*N)/(xz*N+D);
else
    xz=y(o)
    [N D]=rat(P_speed);
    P_speed= (xz*N)/(xz*N+D);
end
end
