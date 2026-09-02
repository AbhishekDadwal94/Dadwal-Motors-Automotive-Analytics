USE Dadwal_Motors_Analytics;
GO

CREATE OR ALTER VIEW gold.vw_DimDate
AS
SELECT
    [Date],
    [Year],
    MonthNumber,
    MonthName,
    MonthShortName,
    QuarterNumber,
    Quarter,
    YearMonth,
    YearQuarter,
    MonthStart,
    DayOfMonth,
    DayOfWeekNumber,
    DayOfWeekName,
    IsWeekend
FROM silver.DimDate;
GO