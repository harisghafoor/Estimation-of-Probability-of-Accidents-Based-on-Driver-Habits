function [grade_passenger grade_passenger_char]=accident_prob_passenger(num_passengers)
if num_passengers==0
    grade_passenger=4.00;
    grade_passenger_char='A';
elseif num_passengers==1
    grade_passenger=3.00;
    grade_passenger_char='D';
elseif num_passengers==2
    grade_passenger=2.00;
    grade_passenger_char='C';
elseif num_passengers==3
    grade_passenger=1.00;
    grade_passenger_char='D';
elseif num_passengers>=4
    grade_passenger=0.00;
    grade_passenger_char='F';
end
end