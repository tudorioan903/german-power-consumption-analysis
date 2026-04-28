## German Power Consumpiton: Impact of COVID-19, the Energy Crisis, and the Nuclear Phase-Out (2019-2024)

### Project Overview
This project analyzes electricity consumption in Germany using hourly data from 2015 to 2026, with a focus on major real-world events such as the COVID-19 pandemic, the 2021–2022 energy crisis, and the nuclear phase-out in 2023.

The analysis was conducted using SQL for data cleaning and exploration, followed by visualization to identify trends, seasonal patterns, and structural changes in energy usage.

Key findings highlight a noticeable drop in consumption during COVID-19 lockdowns, shifts in daily demand patterns, and changes in the energy mix following the nuclear shutdown.


### Data Source
The dataset used in this project is based on publicly available electricity data from the European Network of Transmission System Operators for Electricity (ENTSO-E).

* Original source: https://transparency.entsoe.eu/
* Processed dataset: https://www.kaggle.com/datasets/samithsachidanandan/german-power-consumption

The ENTSO-E Transparency Platform provides official, high-resolution data on electricity generation, consumption, and forecasts across European countries.

The Kaggle dataset was used as a structured and analysis-ready version of the original data.


### Project Tools

SQL Server Management Studio (SSMS) 22 – Connecting, querying and managing the dataset

SQL Server Express – Local SQL environment for restoring and working with the database

Kaggle Dataset – Sample dataset used for analysis

Power BI Desktop – Building the dashboard based on SQL insights

## 🔌 Importing the Dataset to SSMS 22🗄️
- I will start by connecting to the SQL Server Express
  
<img width="613" height="746" alt="1 - Connecting to SQLEXPRESS" src="https://github.com/user-attachments/assets/8931946b-c29a-4003-83c9-4b74379031ed" />

- Importing the .csv file and making sure everything goes smooth
  
<img width="934" height="543" alt="2 - Importing the  csv file" src="https://github.com/user-attachments/assets/a198793f-4b55-4733-aa22-f4150547ba3e" />

- ✅ I now have the table available for querying
  
<img width="1419" height="670" alt="3 - The data is here" src="https://github.com/user-attachments/assets/6e4d3afe-1d69-4367-8ba9-6ba34858c005" />

## 🧹 Data Cleaning & Preparation
### Data Quality Check
- Verified total number of records
- Identified potential duplicates
- Checked for missing values in key columns
  
<img width="1448" height="629" alt="4 - Cleaning data" src="https://github.com/user-attachments/assets/984aee21-51aa-49d4-9feb-72e0731307f9" />

After writing a short query to check the data quality, I identify 2 specific dates that have a missing value: 23/09/2018 and 17/04/2026.

Since these 2 dates are not relevant to my analysis (which will be based only on data from 2019-2024) I can continue.

No duplicate records were found in the dataset, ensuring that each timestamp is unique and reliable for analysis.

### Data Transformation
I will create a new table to facilitate analysis, with extracted time-based features:

- Year
- Month
- Hour
- Weekday
  
<img width="519" height="222" alt="5 - Clean table" src="https://github.com/user-attachments/assets/265a430e-8d64-4728-84b7-367cfaeb6ae2" />

## 📊 Exploratory Data Analysis (EDA)
### Annual trend 

<img width="1653" height="993" alt="6 - Annual consumption average" src="https://github.com/user-attachments/assets/f5a49367-b7bb-4a12-a671-116f0933726b" />

- Electricity consumption remained relatively stable between 2015 and 2018, with a slight upward trend.

- A significant drop is observed starting in 2019, continuing into 2020, which aligns with the onset of the COVID-19 pandemic and reduced industrial activity.

- A partial recovery occurs in 2021, suggesting a rebound as economic activity resumed.

- From 2022 to 2023, consumption declines again, potentially influenced by the European energy crisis and increased energy efficiency measures.

- A gradual recovery is visible from 2024 to 2026, indicating stabilization in energy demand.

### Monthly trend (2019 vs 2020)

<img width="1653" height="993" alt="7 - Monthly consumption average" src="https://github.com/user-attachments/assets/7dfc083d-ed17-4c5c-bf41-180043422a4f" />

- Electricity consumption in 2020 follows a similar seasonal pattern to 2019, with higher values in winter and lower in spring/summer.
  
- A clear divergence appears starting in March–April 2020, where consumption drops significantly below 2019 levels.
  
- The largest gap is observed during April and May, which coincides with the peak of COVID-19 lockdown measures.
  
- From mid-year onward, consumption in 2020 begins to gradually converge back toward 2019 levels, indicating partial recovery.
  
- By the end of the year, the difference between the two years becomes less pronounced, suggesting stabilization.

### Hourly trend (2019 vs 2020)

<img width="2076" height="1024" alt="8 - Hourly consumption average" src="https://github.com/user-attachments/assets/546282e1-0379-4f35-ac48-38e227fcf116" />

- Both years exhibit a typical daily consumption pattern, with demand increasing in the morning, peaking around midday (11:00–13:00), and gradually declining in the evening.

- In 2020, the morning peak appears less pronounced compared to 2019.

 The most noticeable differences occur during standard working hours (08:00–16:00), where consumption in 2020 is significantly reduced.

- The daily load curve in 2020 is slightly flatter, suggesting changes in energy usage behavior.

- These changes coincide with the COVID-19 pandemic and increased remote work.

### Weekday vs Weekend Consumption (2019 vs 2020)

<img width="2170" height="1024" alt="9 - Weekend vs weekday" src="https://github.com/user-attachments/assets/9a76c8b6-e5a5-4027-8afb-545a5db84ca4" />

- In 2019, electricity consumption is higher during weekdays (Monday–Friday) compared to weekends, reflecting normal industrial and business activity.

- In 2020, consumption is consistently lower across all days of the week.

- The reduction is more noticeable during weekdays, particularly from Tuesday to Friday.

- Weekend consumption (Saturday and Sunday) shows a smaller difference between the two years.

- This indicates that the COVID-19 pandemic had a stronger impact on industrial and commercial energy demand than on residential usage.

- The gap between weekday and weekend consumption is reduced in 2020, suggesting a shift toward more uniform daily consumption patterns.
