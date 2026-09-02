USE Dadwal_Motors_Analytics;
GO

IF OBJECT_ID('bronze.DimVehicle', 'U') IS NOT NULL
    DROP TABLE bronze.DimVehicle;
GO

CREATE TABLE bronze.DimVehicle
(
    VehicleID       VARCHAR(20) NULL,
    Brand           VARCHAR(50) NULL,
    Model           VARCHAR(100) NULL,
    VehicleType     VARCHAR(50) NULL,
    MSRP            VARCHAR(30) NULL,
    CostRatio       VARCHAR(30) NULL,
    BaseCost        VARCHAR(30) NULL,
    DemandWeight    VARCHAR(30) NULL
);
GO
