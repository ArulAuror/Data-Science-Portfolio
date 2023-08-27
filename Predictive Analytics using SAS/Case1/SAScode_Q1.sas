*Group 9 Homework 1, Questions 1

*Homework 1, Question 1-a.;
PROC IMPORT OUT= WORK.PIZZA 
            DATAFILE= "E:\Users\DXM200017\Documents\My SAS Files\Homewor
k 1\Pizza.csv" 
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
proc print data=Pizza;
Title 'Pizza Proc Print';
Run;
proc contents data=pizza;
Run;

*Homework 1, Question 1-c.;
/**********************************************************************
 *   PRODUCT:   SAS
 *   VERSION:   9.4
 *   CREATOR:   External File Interface
 *   DATE:      29JAN22
 *   DESC:      Generated SAS Datastep Code
 *   TEMPLATE SOURCE:  (None Specified.)
 ***********************************************************************/
    data WORK.PIZZA    ;
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */
    infile 'E:\Users\DXM200017\Documents\My SAS Files\Homework 1\Pizza.csv' delimiter = ',' MISSOVER DSD lrecl=32767 firstobs=2 ;
       informat SurveyNum best32. ;
       informat Arugula best32. ;
       informat PineNut best32. ;
       informat Squash best32. ;
       informat Shrimp best32. ;
       informat Eggplant best32. ;
       format SurveyNum best12. ;
       format Arugula best12. ;
       format PineNut best12. ;
       format Squash best12. ;
       format Shrimp best12. ;
       format Eggplant best12. ;
    input
                SurveyNum
                Arugula
                PineNut
                Squash
                Shrimp
                Eggplant
    ;
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */
    run;

*Homework 1, Question 1-d.;
PROC MEANS DATA = pizza stackodsoutput mean;
var Arugula PineNut Squash Shrimp Eggplant;
ods output summary=pizza_summary;
RUN;
data pizza_summary;
set pizza_summary (rename= (Variable= Topping));  
data pizza_summary; 
set pizza_summary (rename= (Mean= Average_Rating)); 
run;
proc print data=pizza_summary NOOBS;
run;




