
*Group 9 Homework 3, Question 1; 
/* (a) */
proc reg data = Videogamesales_main_new;
 model Global_Sales = Critic_Score User_score Critic_Count User_Count DS GBA GC PC PS2 PS3 PSP Wii X360;
 run;
quit;
/* (b) */
*Part I basic model critic_score & user_score;
proc reg data = Videogamesales_main;
 model Global_Sales = Critic_Score User_score;
 run;
quit;

*Part II advanced model including critic_count & user_count.Does the # of critics/users have an effect?;
proc reg data = Videogamesales_main;
 model Global_Sales = Critic_Score User_score Critic_Count User_Count Platform Genre;
 run;
quit;
*Part II looking at just critics;
proc reg data = Videogamesales_main;
 model Global_Sales = Critic_Score Critic_Count;
 run;
quit;
*final model including platform turning categorical data into nominal data;
Data Videogamesales_main_new;
set videogamesales_main;
If Platform = "DS" then DS=1;
else DS=0;
If Platform = "GBA" then GBA=1;
else GBA=0;
If Platform = "GC" then GC=1;
else GC=0;
If Platform = "PC" then PC=1;
else PC=0;
If Platform = "PS2" then PS2=1;
else PS2=0;
If Platform = "PS3" then PS3=1;
else PS3=0;
If Platform = "PSP" then PSP=1;
else PSP=0;
If Platform = "Wii" then Wii=1;
else Wii=0;
If Platform = "X360" then X360=1;
else X360=0;
If Platform = "XB" then XB=1;
else XB=0;
run;
*final model including platform;
proc reg data = Videogamesales_main_new;
 model Global_Sales = Critic_Score User_score Critic_Count User_Count DS GBA GC PC PS2 PS3 PSP Wii X360;
 run;
quit;