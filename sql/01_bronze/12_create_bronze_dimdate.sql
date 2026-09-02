USE Dadwal_Motors_Analytics;
GO

IF OBJECT_ID('bronze.DimDate', 'U') IS NOT NULL
    DROP TABLE bronze.DimDate;
GO

CREATE TABLE bronze.DimDate
(
    [Date]              VARCHAR(30) NULL,
    [Year]              VARCHAR(10) NULL,
    MonthNumber         VARCHAR(10) NULL,
    MonthName           VARCHAR(30) NULL,
    MonthShortName      VARCHAR(30) NULL,
    QuarterNumber       VARCHAR(10) NULL,
    Quarter             VARCHAR(10) NULL,
    YearMonth           VARCHAR(20) NULL,
    YearQuarter         VARCHAR(20) NULL,
    MonthStart          VARCHAR(30) NULL,
    DayOfMonth          VARCHAR(10) NULL,
    DayOfWeekNumber     VARCHAR(10) NULL,
    DayOfWeekName       VARCHAR(30) NULL,
    IsWeekend            VARCHAR(10) NULL
);
GO
