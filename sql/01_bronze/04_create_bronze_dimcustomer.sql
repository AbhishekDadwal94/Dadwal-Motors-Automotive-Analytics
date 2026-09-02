USE Dadwal_Motors_Analytics;
GO

IF OBJECT_ID('bronze.DimCustomer', 'U') IS NOT NULL
    DROP TABLE bronze.DimCustomer;
GO

CREATE TABLE bronze.DimCustomer
(
    CustomerID             VARCHAR(20) NULL,
    Province               VARCHAR(50) NULL,
    CustomerSegment        VARCHAR(30) NULL,
    RegistrationDate       VARCHAR(30) NULL,
    CustomerTenureMonths   VARCHAR(20) NULL,
    CustomerTenureBand     VARCHAR(30) NULL
);
GO
