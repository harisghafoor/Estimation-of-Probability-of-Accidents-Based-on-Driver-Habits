function [grade_alcohol grade_alcohol_char]=accident_prob_alcohol(alcohol)
if alcohol==0
    grade_alcohol=4.00;
    grade_alcohol_char='A';
elseif alcohol==1
    grade_alcohol=0.00;
    grade_alcohol_char='F';
end