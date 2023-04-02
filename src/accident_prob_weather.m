function P_weather=accident_prob_weather(w,theta,x_times,a,y)
if w==0
    P_weather=0;
end
x=1.28;
P_weather=1/49;
[N D]=rat(P_weather);
P_weather= (x*N)/(x*N+D);

% Comparing the theta and a.
for l=1:length(y)
    vector=a(l,:);
    if theta==vector
        o=l
    end
end
if y(o)==0
    xz=1;
    [N D]=rat(P_weather);
    P_weather= (xz*N)/(xz*N+D);
else
    xz=y(o)
    [N D]=rat(P_weather);
    P_weather= (xz*N)/(xz*N+D);
end

end
