USE Dadwal_Motors_Analytics;
GO

IF OBJECT_ID('bronze.DimSalesperson', 'U') IS NOT NULL
    DROP TABLE bronze.DimSalesperson;
GO

CREATE TABLE bronze.DimSalesperson
(
    SalespersonID         VARCHAR(20) NULL,
    SalespersonName       VARCHAR(100) NULL,
    DealershipID          VARCHAR(20) NULL,
    SalesTeam             VARCHAR(50) NULL,
    PerformanceTier       VARCHAR(50) NULL,
    PerformanceWeight     VARCHAR(30) NULL,
    SalesInfluenceWeight  VARCHAR(30) NULL
);
GO
