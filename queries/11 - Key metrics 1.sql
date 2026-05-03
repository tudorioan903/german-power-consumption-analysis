WITH energy_periods AS (
    SELECT 
        CASE 
            WHEN date < '2023-05-01' THEN 'Before'
            ELSE 'After'
        END AS period,

        AVG(generation_nuclear_actual_aggregated) AS nuclear,

        AVG(
            generation_fossil_brown_coal_lignite_actual_aggregated
            + generation_fossil_gas_actual_aggregated
        ) AS fossil,

        AVG(
            generation_wind_onshore_actual_aggregated
            + generation_wind_offshore_actual_aggregated
            + generation_Solar_Actual_aggregated
        ) AS renewables

    FROM power_consumption_germany

    WHERE date BETWEEN '2022-01-01' AND '2024-12-31'

    GROUP BY 
        CASE 
            WHEN date < '2023-05-01' THEN 'Before'
            ELSE 'After'
        END
)

SELECT
    ((MAX(CASE WHEN period = 'After' THEN nuclear END) -
      MAX(CASE WHEN period = 'Before' THEN nuclear END))
      * 100.0 / MAX(CASE WHEN period = 'Before' THEN nuclear END)) AS nuclear_pct_change,

    ((MAX(CASE WHEN period = 'After' THEN fossil END) -
      MAX(CASE WHEN period = 'Before' THEN fossil END))
      * 100.0 / MAX(CASE WHEN period = 'Before' THEN fossil END)) AS fossil_pct_change,

    ((MAX(CASE WHEN period = 'After' THEN renewables END) -
      MAX(CASE WHEN period = 'Before' THEN renewables END))
      * 100.0 / MAX(CASE WHEN period = 'Before' THEN renewables END)) AS renewables_pct_change

FROM energy_periods;
