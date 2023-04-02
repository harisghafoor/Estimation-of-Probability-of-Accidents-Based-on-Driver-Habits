function P_gender=accident_prob_gender(P,gender)
if gender==0
    [N D]=rat(P);
    P_gender= (2*N)/(2*N+D);
else
    P_gender=P;
end
end

