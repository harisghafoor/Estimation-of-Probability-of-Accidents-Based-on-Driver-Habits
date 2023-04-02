clc 
clear all
%% Taking Input From Data_Center
name=input('Kindly enter the name of the driver  :     ', 's')
age=input('Enter the age of driver :    ')
gender=input('Enter the gender of rider : (M/F)   ','s')
t=input('Enter the time of day of ride in 24 hr format :  ')
d=input('Enter the day  of  week (Monday is 01 and Sunday is 07) :   ')
m=input('Enter the month of year (Jan is 01 and Dec is 12) :   ')
w=input('Enter the 1 if weather is Rainy/Bad and 0 if weather is normal: ')
s=input('Enter the speed of ride in MPH  ')
speed_limit=input('Enter the speed_limit in MPH  ')
r=input('Enter the 1 if ride is Aggressive and 0 if it is careless: ')
txt=input('Enter if driver was doing texts and 0 if normal:  ')
seat=input('Enter the 1 if driver didnt wore seatbelts and 0 if he did wore  :')
num_passengers=input('Enter the number of passengers from 0 to 5:   ')
alcohol=input('Enter the 1 if rider is drunk and 0 if it is normal:  ')

%%

if age>=15 & age<=19
   theta_p(1)=1 % age= teenager
else
   theta_p(1)=0; % age=non-teenager
end
if gender=='M' | gender=='m'
    theta_p(2)=1; % gender = male
elseif gender=='F' | gender=='f'
    theta_p(2)=0; % gender = female
end
if num_passengers<=2
    theta_p(6)=0; % less passengers
    x_passenger=2;
elseif num_passengers>2
    theta_p(6)=1; % more passengers
    x_passenger=5;
end
if isempty(txt)==1
    txt=1;
    theta_p(3)=0;
else
    theta_p(3)=txt
end
if isempty(seat)==1
    seat=0
    theta_p(4)=0;
else
    theta_p(4)=seat;
end
if isempty(alcohol)==1
    alcohol=0;
    theta_p(5)=0;
else
    theta_p(5)=alcohol;
end
x_age=3;
x_gender=2;
x_text=23;
x_seat=2;
x_alcohol=4.5;
x_times=[x_age x_gender x_text x_seat x_alcohol x_passenger];
[a,y]=additional_factors(x_times);
%%
P_time=accident_prob_time(t,theta_p,x_times,a,y)
P_day=accident_prob_day(d,theta_p,x_times,a,y)
P_month=accident_prob_month(m,theta_p,x_times,a,y)
P_weather=accident_prob_weather(w,theta_p,x_times,a,y)
[P_speed,grade_speed,grade_speed_char]=accident_prob_speed(s,speed_limit,theta_p,x_times,a,y)
[P_driving_style,grade_driving_style,grade_driving_style_char]=accident_prob_driving_style(r,theta_p,x_times,a,y)

%%

[grade_text,grade_text_char] =accident_prob_text(txt)
[grade_seat,grade_seat_char] =accident_prob_seat(seat)
[grade_passenger,grade_passenger_char] =accident_prob_passenger(num_passengers)
[grade_alcohol,grade_alcohol_char]=accident_prob_alcohol(alcohol)


grade_points=(grade_seat+grade_text+grade_speed+grade_alcohol+grade_passenger+grade_driving_style)/6
if grade_points>=0 & grade_points<=1
    Final_grade='F'
elseif grade_points>=1 & grade_points<2
    Final_grade='D'
elseif grade_points>=2 & grade_points<3
    Final_grade='C'
elseif grade_points>=3 & grade_points<4
    Final_grade='B'
elseif grade_points>=4
    Final_grade='A'    
end

%% Writing to Excel Sheet
filename = 'testdata.xlsx';
C={     'Features', ' Fearure Value', 'Feature Probability in %', 'Feature Grade';
        'Name', name,' - ',' - ';
        'Age',age, ' - ',' - ';
        'gender',gender, ' - ' ,' - ';
        ' Time of day ',t,P_time*100,' - ';
        ' Day of week ', d ,P_day*100,' - ';
        ' Month of year ', m ,P_month*100,' - ';
        ' Weather ', w ,P_weather*100 ,' - ';
        ' Speed ',s,P_speed*100,grade_speed_char;
        ' Reckless Driving',r,P_driving_style*100,grade_driving_style_char;
        ' texting ',txt,'-',grade_text_char;
        ' Seatbelts ',seat,'-',grade_seat_char;
        ' Alcohol ',alcohol,'-',grade_alcohol_char;
        ' Passengers ',num_passengers,'-',grade_passenger_char;
        '' ,'', '', '';
        ' Final Grade' ,'', '', Final_grade};
xlswrite(filename,C)