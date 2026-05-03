SELECT 
    date,
    load_actual_load,
    YEAR(date) as year,
    MONTH(date) as month,
    DATEPART(HOUR, date) as hour,
    DATENAME(WEEKDAY, date) as weekday
INTO clean_energy
FROM power_consumption_germany
WHERE load_actual_load IS NOT NULL;
