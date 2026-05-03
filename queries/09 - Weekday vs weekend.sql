SELECT 
    CASE 
        WHEN DATENAME(WEEKDAY, date) IN ('Saturday', 'Sunday') THEN 'Weekend'
        ELSE 'Weekday'
    END as day_type,
    (
        AVG(CASE WHEN year = 2020 THEN load_actual_load END) -
        AVG(CASE WHEN year = 2019 THEN load_actual_load END)
    ) * 100.0 /
    AVG(CASE WHEN year = 2019 THEN load_actual_load END) as pct_change
FROM clean_energy
GROUP BY 
    CASE 
        WHEN DATENAME(WEEKDAY, date) IN ('Saturday', 'Sunday') THEN 'Weekend'
        ELSE 'Weekday'
    END;
