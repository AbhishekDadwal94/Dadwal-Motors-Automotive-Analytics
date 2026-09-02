USE Dadwal_Motors_Analytics;
GO

CREATE OR ALTER VIEW gold.vw_DimSalesperson
AS
SELECT
    SalespersonID,
    SalespersonName,
    DealershipID,
    SalesTeam,
    PerformanceTier,
    PerformanceWeight,
    SalesInfluenceWeight
FROM silver.DimSalesperson;
GO