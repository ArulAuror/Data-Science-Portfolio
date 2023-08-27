
*Group 9 Homework 2, Question 1; 
/* (a) */
Libname Hw2 'Homework 2';
Data Study_gpa;
Set HW2.Study_gpa;
Run;
proc sgplot data= Study_gpa;
 histogram AveTime / binstart = 0 binwidth = 5 ; 
 density AveTime / type = kernel; 
 density AveTime; 
 title 'Average Study Time';
run;

/* (b) */ 
proc univariate data= Study_gpa normal;
 var AveTime; 
 title 'Summary Statistics for Average Study Time';
run;

/* (c) */ 
proc univariate data= Study_gpa normal;
 var Units AveTime GPA; 
 title 'Summary Statistics for Hypothesis Test';
run;
proc sort data=Study_gpa;;
 by Section;
run;
proc corr data=Study_gpa spearman;
 var Units AveTime GPA;
 by Section;
run;



