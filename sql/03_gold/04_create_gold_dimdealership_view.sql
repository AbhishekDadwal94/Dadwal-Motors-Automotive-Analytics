USE Dadwal_Motors_Analytics;
GO

CREATE OR ALTER VIEW gold.vw_DimDealership
AS
SELECT
    DealershipID,
    DealershipName,
    Province,
    Region,
    SalesCapacityWeight
FROM silver.DimDealership;
GO