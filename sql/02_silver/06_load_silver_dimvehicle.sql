USE Dadwal_Motors_Analytics;
GO

INSERT INTO silver.DimVehicle
(
    VehicleID,
    Brand,
    Model,
    VehicleType,
    MSRP,
    CostRatio,
    BaseCost,
    DemandWeight
)
SELECT
    NULLIF(LTRIM(RTRIM(VehicleID)), ''),
    NULLIF(LTRIM(RTRIM(Brand)), ''),
    NULLIF(LTRIM(RTRIM(Model)), ''),
    NULLIF(LTRIM(RTRIM(VehicleType)), ''),
    TRY_CONVERT(DECIMAL(18,2), MSRP),
    TRY_CONVERT(DECIMAL(18,12), TRY_CONVERT(FLOAT, CostRatio)),
    TRY_CONVERT(DECIMAL(18,2), BaseCost),
    TRY_CONVERT(DECIMAL(18,12), TRY_CONVERT(FLOAT, DemandWeight))
FROM bronze.DimVehicle;
GO
