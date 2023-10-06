# Flight Performance and Weather Analysis
## Overview
This project aims to analyze flight performance in globally. Our protoype focuses on the UK, Argentina, Germany, Italy, and Mexico. We are looking for a correlation between the local weather conditions during the year 2022-focusing on March, June, and December travel dates. The primary goal is to assist travelers in choosing the right destination at the right time by providing insights into flight punctuality and its relationship with weather patterns. An interactive dashboard allows users to select a country and view visualizations highlighting the best times of the year to travel to that city.

## Countries Analyzed
+ The United Kingdom
+ Italy
+ Germany
+ Argentina
+ Mexico

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
Users can expect to find valuable insights to help them choose their desired destination country and airport to visit based on flight performance and weather conditions. Users can select a country and an interactive dashboard will deploy for users to interact with and determine what city is best for them. Each airport will display a stacked bar graph/multi-line graph with flight status results (canceled/delayed/on-time) for respective city. Data will be organized by time of year to determine the best time of year to travel to each country! 

## Project Contributors: 
+ Isac Ramos: GitHub | LinkedIn
+ Ashley Ley: GitHub | LinkedIn 
+ Aaron Summers: GitHub | LinkedIn
+ Dulce Silva: GitHub | LinkedIn
+ Natalie Binder: GitHub | LinkedIn 
