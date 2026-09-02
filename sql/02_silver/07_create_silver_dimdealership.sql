USE Dadwal_Motors_Analytics;
GO

IF OBJECT_ID('silver.DimDealership', 'U') IS NOT NULL
    DROP TABLE silver.DimDealership;
GO

CREATE TABLE silver.DimDealership
(
    DealershipID          VARCHAR(20) NOT NULL,
    DealershipName        VARCHAR(100) NOT NULL,
    Province              VARCHAR(50) NOT NULL,
    Region                VARCHAR(50) NOT NULL,
    SalesCapacityWeight   DECIMAL(18,12) NOT NULL,

    CONSTRAINT PK_Silver_DimDealership
        PRIMARY KEY (DealershipID)
);
GO
