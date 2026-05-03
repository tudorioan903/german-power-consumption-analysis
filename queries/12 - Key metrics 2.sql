SELECT 
    CASE 
        WHEN date < '2023-05-01' THEN 'Before Phase-Out'
        ELSE 'After Phase-Out'
    END AS period,

    AVG(generation_nuclear_actual_aggregated) AS avg_nuclear,

    AVG(
        generation_fossil_brown_coal_lignite_actual_aggregated
        + generation_fossil_gas_actual_aggregated
    ) AS avg_fossil,

    AVG(
        generation_wind_onshore_actual_aggregated
        + generation_wind_offshore_actual_aggregated
        + generation_Solar_Actual_aggregated
    ) AS avg_renewables

FROM power_consumption_germany

WHERE date BETWEEN '2022-01-01' AND '2024-12-31'

GROUP BY 
    CASE 
        WHEN date < '2023-05-01' THEN 'Before Phase-Out'
        ELSE 'After Phase-Out'
    END;
