SELECT 
    year,
    DATENAME(WEEKDAY, date) as weekday,
    DATEPART(WEEKDAY, date) as weekday_num,
    AVG(load_actual_load) as avg_load
FROM clean_energy
WHERE year IN (2019, 2020)
GROUP BY 
    year,
    DATENAME(WEEKDAY, date),
    DATEPART(WEEKDAY, date)
ORDER BY year, weekday_num;
