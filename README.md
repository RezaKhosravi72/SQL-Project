# 120 years of Olympic History: Analyzing Athletes and Results with SQL

***basic bio data on athletes and medal results from Athens 1896 to Rio 2016***


This project contains SQL queries to analyze a dataset containing Olympic athlete and medal result data from 1896 to 2016. 

## Data

The dataset was obtained from Kaggle containing over 270k rows with details of individual athletes, events, medals etc. 

## About Dataset

### Downloading Data from Kaggle:
You can download the dataset from [here](https://www.kaggle.com/datasets/heesoo37/120-years-of-olympic-history-athletes-and-results/).

## Context

This is a historical dataset on the modern Olympic Games, including all the Games from Athens 1896 to Rio 2016. I scraped this data from www.sports-reference.com in May 2018. The R code I used to scrape and wrangle the data is on GitHub. I recommend checking my kernel before starting your own analysis.

Note that the Winter and Summer Games were held in the same year up until 1992. After that, they staggered them such that Winter Games occur on a four year cycle starting with 1994, then Summer in 1996, then Winter in 1998, and so on. A common mistake people make when analyzing this data is to assume that the Summer and Winter Games have always been staggered.

## Content

The file athlete_events.csv contains 271116 rows and 15 columns. Each row corresponds to an individual athlete competing in an individual Olympic event (athlete-events). The columns are:

    ID - Unique number for each athlete
    Name - Athlete's name
    Sex - M or F
    Age - Integer
    Height - In centimeters
    Weight - In kilograms
    Team - Team name
    NOC - National Olympic Committee 3-letter code
    Games - Year and season
    Year - Integer
    Season - Summer or Winter
    City - Host city
    Sport - Sport
    Event - Event
    Medal - Gold, Silver, Bronze, or NA


# Questions Answered

The SQL scripts (with names describing the query) address questions like:

- Total Olympic games held 
- Nations participated each games
- Sports played in Summer games
- Athletes with most gold/medals 
- Countries with most medals overall
- Highest/lowest participating nations
- Oldest gold medalist details
- Male/Female ratios
- Nation with perpetual attendance
- Individual country performances

## How to Run

1. Download and extract the dataset zip file
2. Import tables into a SQL database 
3. Run the .sql files sequentially in any SQL editor
4. Results are output as .csv files


## Additional Information

- The dataset contains records of over 270,000 athlete-events spanning 120 years of Olympic history. 

- Tables are created in SQL to structure the data into dimensions like athletes, games, events etc. 

- CSV files are imported into these tables using the CREATE_TABLES.sql script.

- Queries are then written in individual .sql files to investigate different aspects systematically.

- Output is generated as CSV files containing the results of each analysis question.

- 01_total_olympic_games.sql counts the total Summer and Winter games held.

- 03_nations_who_participated examines the participants and medals data over time. 

- 04/05 scripts analyze highest/lowest participating nations and eternal attenders.

- 06-08 study sports trends across games and editions.

- 09-12 dig into individual athlete and country medals records.

- 13-15 focus more on country-level performance and dominance. 

- Additional insights include gender parity evolution and dominant sports/countries.

- The approach helps understand the rich history via data-backed conclusions.

- Future scope includes incorporating demographic dimensions and modeling predictive analytics.

## Queries Explanation

#### 18_Goldless_SiverBronze.sql:

- This query finds nations that won medals (Silver/Bronze) but never Gold in the history of Olympics.  
- It joins tables on NOC codes and filters for only medals won but no Gold record.
- The results provide a list of countries restricted to lower podium finishes.

#### 19_IRAN_Wrestling_Medals.sql:  

- This focuses analysis on a single country, Iran, to understand its performance.
- It filters the dataset for Iran's NOC code and the sport 'Wrestling'.
- Aggregate functions count the number of Gold, Silver and Bronze medals won.
- The results quantify Iran's success specifically in its strong sport of Wrestling.

#### 19_IRAN_Wrestling_Medals_A.sql:

- This is an extended version adding GROUP BY to break results by individual Games.  
- This allows viewing Iran's Wrestling medal counts edition-wise over the decades.
- Insights include identifying Iran's most prolific Olympic games for this sport.

#### 20_IRI_Highest_Medals.sql:

- Here individual Iranian athletes winning the most medals are investigated.  
- Filters are on Iran's NOC code and aggregates count medals per athlete.  
- Results order the athletes by their total medal counts highlighting dominant Iranians.

#### 20_IRI_Highest_Medals_A.sql:  

- This version further drills down medals won per athlete by individual games.
- This helps recognize Iran's all-time greatest Olympians edition-wise.


## Requirements

- Microsoft SQL Server Management Studio 
- Basic SQL knowledge

The repository provides an excellent demonstration of how SQL can be leveraged to gain meaningful insights from a sports dataset.


## Acknowledgements
The Olympic data on www.sports-reference.com is the result of an incredible amount of research by a group of Olympic history enthusiasts and self-proclaimed 'statistorians'. Check out their blog for more information. All I did was consolidated their decades of work into a convenient format for data analysis.

