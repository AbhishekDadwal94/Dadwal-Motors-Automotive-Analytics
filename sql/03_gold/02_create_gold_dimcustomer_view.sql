USE Dadwal_Motors_Analytics;
GO

CREATE OR ALTER VIEW gold.vw_DimCustomer
AS
SELECT
    CustomerID,
    Province,
    CustomerSegment,
    RegistrationDate,
    CustomerTenureMonths,
    CustomerTenureBand
FROM silver.DimCustomer;
GO
