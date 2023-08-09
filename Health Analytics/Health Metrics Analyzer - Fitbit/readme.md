
### Goal:
During the pandemic season like in late 2021, not all my master's program classes at UTD were in-person and thus happened to spend my time indoors mostly. I wanted to explore my health metrics derived my fitness tracker plus my custom analysis to improve my overall well being and ended up building an end-end project for the same
1. Wanted to understand how well I could keep up with my set goals with respect to walking and other exercises considering all the extraneous factors that can’t be derived from standard fitness tracker.
2. Using ML to predict sleep quality metrics based on deep sleep
3. Also wanted to explore any interesting findings along the way.

### Motivation:
1. How Extraneous factors affected my sleep like watching tv/ reading/ exercises. For example in alternate weekends, I indulge yoga/ badminton programs in my university
2. ML model to see if there is a hidden pattern to attain better deep sleep
3. Following a steady sleep schedule or not and factors influencing it
4. Does my sleep schedule vary over Weekdays vs weekends trend w.r.t activity time
5. Understanding sleep stages to know what it takes to have a better deep sleep ie What it takes to get a better deep sleep

### Steps
![image](https://github.com/ArulAuror/Data-Science-Portfolio/assets/76837847/e7d5b9be-e489-48b1-86fc-778ab007dc8b)

### Data Scraping
Scanning through developer pages, I came across WebAPI of my Fitness tracker that exposes daily usage reports as follows
1. Steps covered
2. Calories burned
3. Sleep stages
4. Heart rate/minute 
I registered my app to get necessary client side credentials to begin data grabbing. With authorization steps collected and merged necessary data in excel file. collected and merged my daily Activity, Sleep and Heart rate data which I dumped into SQL.
![image](https://github.com/ArulAuror/Data-Science-Portfolio/assets/76837847/9279fe49-c4c1-4d05-8dba-1a693e8e1273)
![image](https://github.com/ArulAuror/Data-Science-Portfolio/assets/76837847/91ccf46a-a1a0-433b-a734-727c4486c8c7)

### Loading of Scraped Data to SQL 
Have written scripts to pull the data 
![image](https://github.com/ArulAuror/Data-Science-Portfolio/assets/76837847/869e67fa-3a8e-4311-af69-8cb817a58e12)


### Sleep analysis
__Sleep cycle stages in different days of a week__
![image](https://github.com/ArulAuror/Data-Science-Portfolio/assets/76837847/59af4eff-cbee-48a7-b030-9429f61b7413)


__Deep Sleep Correlation__
![image](https://github.com/ArulAuror/Data-Science-Portfolio/assets/76837847/77c7025f-d929-4bcc-935a-a18e00ac0dd6)



