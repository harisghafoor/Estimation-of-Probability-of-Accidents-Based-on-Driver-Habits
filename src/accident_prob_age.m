function P_age=accident_prob_age(P,age)
if age>=15 & age<=19
    [N D]=rat(P);
    P_age= (3*N)/(3*N+D);
else
    P_age=P;

end
end