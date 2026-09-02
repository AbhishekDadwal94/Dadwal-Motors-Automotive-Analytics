USE Dadwal_Motors_Analytics;
GO

IF OBJECT_ID('silver.DimSalesperson', 'U') IS NOT NULL
    DROP TABLE silver.DimSalesperson;
GO

CREATE TABLE silver.DimSalesperson
(
    SalespersonID          VARCHAR(20) NOT NULL,
    SalespersonName        VARCHAR(100) NOT NULL,
    DealershipID           VARCHAR(20) NOT NULL,
    SalesTeam              VARCHAR(50) NOT NULL,
    PerformanceTier        VARCHAR(30) NOT NULL,
    PerformanceWeight      DECIMAL(18,12) NOT NULL,
    SalesInfluenceWeight   DECIMAL(18,12) NOT NULL,

    CONSTRAINT PK_Silver_DimSalesperson
        PRIMARY KEY (SalespersonID)
);
GO
