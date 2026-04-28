SELECT 
    (
        AVG(CASE WHEN year = 2020 AND DATEPART(HOUR, date) BETWEEN 8 AND 16 THEN load_actual_load END) -
        AVG(CASE WHEN year = 2019 AND DATEPART(HOUR, date) BETWEEN 8 AND 16 THEN load_actual_load END)
    ) * 100.0 /
    AVG(CASE WHEN year = 2019 AND DATEPART(HOUR, date) BETWEEN 8 AND 16 THEN load_actual_load END) as pct_change
FROM clean_energy;