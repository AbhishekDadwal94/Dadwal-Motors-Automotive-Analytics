USE Dadwal_Motors_Analytics;
GO

IF OBJECT_ID('silver.DimCustomer', 'U') IS NOT NULL
    DROP TABLE silver.DimCustomer;
GO

CREATE TABLE silver.DimCustomer
(
    CustomerID             VARCHAR(20) NOT NULL,
    Province               VARCHAR(50) NOT NULL,
    CustomerSegment        VARCHAR(30) NOT NULL,
    RegistrationDate       DATE NOT NULL,
    CustomerTenureMonths   INT NOT NULL,
    CustomerTenureBand     VARCHAR(30) NOT NULL,

    CONSTRAINT PK_Silver_DimCustomer
        PRIMARY KEY (CustomerID)
);
GO
