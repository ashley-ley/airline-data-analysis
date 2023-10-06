# Flight Performance and Weather Analysis
## Overview
This project aims to analyze flight performance in globally based on their flight status (canceled, on time, or delayed). Our protoype focuses on the United Kingdom (UK), Argentina, Germany, Italy, and Mexico. Our goal is to help the avid traveler get to their desired destination in the most efficient way. OUur current data set includes information about flight statuses internationally, but specifically focusing on five specific countries. 

## Countries Analyzed
+ The United Kingdom
+ Italy
+ Germany
+ Argentina
+ Mexico

As we continue analyzing this project and assessing specific issues we were seeing with our Flask API, our goal is to create an interactive dashboard for users to click and choose their desired destination for travel, then further decide what airport they want to travel to based on flight status. The primary goal of this dashboard is to give users a way to travel efficiently while comparing weather for the specific times of year. 

## Data Sources
Datasets for flight performance and weather were collected from Kaggle. 

## Data Collection
Once datasets were selected, extensive data cleaning was necessary to include only the most pertinent information. Datasets were cleaned and imported to the "Weather_Data" folder. Once data collection and cleaning were completed, we created a PostgreSQL database to populate our API calls. This allowed us to develop our Flask API.

## Analysis Period
The flight performance analysis focuses on the year 2022 from January 1, 2022 to December 29, 2022.

## Metrics
We analyze flight performance using the following metrics:

+ Number of flights on time
+ Number of delayed flights
+ Number of canceled flights

We also cross-analyze this data with local weather conditions to identify potential correlations.

## Technologies Used
+ Jupyter Notebook to cleanse the datasets 
+ PostgreSQL and SQLite for database management
+ HTML, JavaScript, and CSS for creating an interactive dashboard

## Installation
To access our technology, visit the deployed link. If you intend to modify the code, you'll need the files within the Airport_Data and Weather_Data directories. Please note that these datasets are large and may take some time to process.

## Usage
Select the city you would like to travel to.
The dashboard will display flight performance information for the chosen country and airport based on the time of year and local weather conditions.

## Results and Conclusion
Currently, we focused our analysis on a few countries based on high-travel times (March for Spring Break, June for Summer Vacation and December for the Holiday Season). These times were chosen to help depict a clear picture for flight status based on country. With the holidays quickly approaching, we wanted to display the flight status for countries of our desired destinations while we continue working. 

### Flight Status in Germany during December 2022
![image](https://github.com/ashley-ley/airline-data-analysis/assets/132225987/3f313410-9bf7-46ff-aaf6-3c0684a0f747)

### FLight Status in Mexico in December 2022
![image](https://github.com/ashley-ley/airline-data-analysis/assets/132225987/285e5faa-9a1e-4fb6-9347-ad315d01b577)

Moving forward, we would like to continue analyzing this information thoroughly by diving into specific airports in each country. Users can expect to find valuable insights to help them choose their desired destination country and airport to visit based on flight performance and weather conditions. Users will select a country and an interactive dashboard will deploy for users to interact with and determine what airport will be best for their travel destinations. Each airport will display a stacked bar graph/multi-line graph with flight status results (canceled/delayed/on-time) for the respective airport. Data will be organized by time of year to determine the best time of year to travel to each country! 

## Project Contributors: 
+ Isac Ramos: GitHub | LinkedIn
+ Ashley Ley: GitHub | LinkedIn 
+ Aaron Summers: GitHub | LinkedIn
+ Dulce Silva: GitHub | LinkedIn
+ Natalie Binder: GitHub | LinkedIn 
