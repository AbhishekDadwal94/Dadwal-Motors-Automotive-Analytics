USE Dadwal_Motors_Analytics;
GO

IF OBJECT_ID('bronze.DimDealership', 'U') IS NOT NULL
    DROP TABLE bronze.DimDealership;
GO

CREATE TABLE bronze.DimDealership
(
    DealershipID         VARCHAR(20) NULL,
    DealershipName       VARCHAR(100) NULL,
    Province              VARCHAR(50) NULL,
    Region                VARCHAR(50) NULL,
    SalesCapacityWeight  VARCHAR(30) NULL
);
GO
