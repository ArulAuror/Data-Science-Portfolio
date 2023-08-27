
*Group 9 Homework 1, Questions 2

*Homework 1, Question 2-a.;
data hotel; 
infile 'Hotel.dat';  
input roomnumber 7. numberofguests 5. chkinmonth 3. chkinday 3. chkinyear 8. chkoutmonth 3. chkoutday 4. chkoutyear 8. wirelessuse $7. noofdaysinternetuse 4. roomtype $16. roomrate 3.; 
checkindate = input(catx("/",chkinmonth,chkinday,chkinyear),mmddyy10.);  
checkoutdate = input(catx("/",chkoutmonth,chkoutday,chkoutyear),mmddyy10.); 
format checkindate mmddyy10.; 
format checkoutdate mmddyy10.;
 
*Homework 1, Question 2-b.;
noofdays = intck('DAY',checkindate,checkoutdate);  
subtotal = (noofdays * roomrate) + (10*( numberofguests-1)*noofdays); 
if wirelessuse='YES' then subtotal = subtotal + (9.95 +(4.95 * noofdaysinternetuse));
 
*Homework 1, Question 2-c.;
grandtotal = Round(subtotal + (subtotal *.0775),0.01); 

*Homework 1, Question 2-d.;
proc print data=hotel; 
run;




