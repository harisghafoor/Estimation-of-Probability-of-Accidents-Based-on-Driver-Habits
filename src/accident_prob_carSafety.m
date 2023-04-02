function P_carSafety=accident_prob_carSafety(P,car_rating)
x=(car_rating-5)/5;
x=abs(x);
if x==0
    P_carSafety=P;
end
[N D]=rat(P);
P_carSafety= (x*N)/(x*N+D);
end
