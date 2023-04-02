function [grade_seat grade_seat_char] =accident_prob_seat(seat)
if seat==0
    grade_seat=4.00;
    grade_seat_char='A';
elseif seat==1
    grade_seat=0.00;
    grade_seat_char='F';
end
end