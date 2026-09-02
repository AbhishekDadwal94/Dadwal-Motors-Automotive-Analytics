USE Dadwal_Motors_Analytics;
GO

CREATE OR ALTER VIEW gold.vw_DimVehicle
AS
SELECT
    VehicleID,
    Brand,
    Model,
    VehicleType,
    MSRP,
    CostRatio,
    BaseCost,
    DemandWeight
FROM silver.DimVehicle;
GO