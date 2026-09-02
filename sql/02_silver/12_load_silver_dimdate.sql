USE Dadwal_Motors_Analytics;
GO

INSERT INTO silver.DimDate
(
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
)
SELECT
    TRY_CONVERT(DATE, [Date]),
    TRY_CONVERT(INT, [Year]),
    TRY_CONVERT(INT, MonthNumber),
    NULLIF(LTRIM(RTRIM(MonthName)), ''),
    NULLIF(LTRIM(RTRIM(MonthShortName)), ''),
    TRY_CONVERT(INT, QuarterNumber),
    NULLIF(LTRIM(RTRIM(Quarter)), ''),
    NULLIF(LTRIM(RTRIM(YearMonth)), ''),
    NULLIF(LTRIM(RTRIM(YearQuarter)), ''),
    TRY_CONVERT(DATE, MonthStart),
    TRY_CONVERT(INT, DayOfMonth),
    TRY_CONVERT(INT, DayOfWeekNumber),
    NULLIF(LTRIM(RTRIM(DayOfWeekName)), ''),
    TRY_CONVERT(BIT, IsWeekend)
FROM bronze.DimDate;
GO
