function [P_driving_style grade_driving_style grade_driving_style_char]=accident_prob_driving_style(r,theta,x_times,a,y)
x=[1.49 2.00];
px=[1/42 1/32];
if r == 0
    z=x(1);
    P_driving_style=px(1);
    [N D]=rat(P_driving_style);
    P_driving_style= (z*N)/(z*N+D);
    grade_driving_style=4.00;
    grade_driving_style_char='A';
elseif r==1
    z=x(2);
    P_driving_style=px(2);
    [N D]=rat(P_driving_style);
    P_driving_style= (z*N)/(z*N+D);
    grade_driving_style=0.00;
    grade_driving_style_char='F';
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
    [N D]=rat(P_driving_style);
    P_driving_style= (xz*N)/(xz*N+D);
else
    xz=y(o)
    [N D]=rat(P_driving_style);
    P_driving_style= (xz*N)/(xz*N+D);
end
end
