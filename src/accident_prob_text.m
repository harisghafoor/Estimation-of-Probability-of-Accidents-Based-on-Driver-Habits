function [grade_text grade_text_char]=accident_prob_text(txt)
if txt==0
    grade_text=4.00;
    grade_text_char='A';
elseif txt==1
    grade_text=0.00;
    grade_text_char='F';
end
end