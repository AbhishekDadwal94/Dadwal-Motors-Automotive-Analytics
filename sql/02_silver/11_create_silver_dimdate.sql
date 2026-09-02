USE Dadwal_Motors_Analytics;
GO

IF OBJECT_ID('silver.DimDate', 'U') IS NOT NULL
    DROP TABLE silver.DimDate;
GO

CREATE TABLE silver.DimDate
(
    [Date]              DATE NOT NULL,
    [Year]              INT NOT NULL,
    MonthNumber         INT NOT NULL,
    MonthName           VARCHAR(20) NOT NULL,
    MonthShortName      VARCHAR(10) NOT NULL,
    QuarterNumber       INT NOT NULL,
    Quarter             VARCHAR(10) NOT NULL,
    YearMonth           VARCHAR(20) NOT NULL,
    YearQuarter         VARCHAR(20) NOT NULL,
    MonthStart          DATE NOT NULL,
    DayOfMonth          INT NOT NULL,
    DayOfWeekNumber     INT NOT NULL,
    DayOfWeekName       VARCHAR(20) NOT NULL,
    IsWeekend            BIT NOT NULL,

    CONSTRAINT PK_Silver_DimDate
        PRIMARY KEY ([Date])
);
GO
