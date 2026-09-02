USE Dadwal_Motors_Analytics;
GO

IF OBJECT_ID('silver.DimVehicle', 'U') IS NOT NULL
    DROP TABLE silver.DimVehicle;
GO

CREATE TABLE silver.DimVehicle
(
    VehicleID       VARCHAR(20) NOT NULL,
    Brand           VARCHAR(50) NOT NULL,
    Model           VARCHAR(100) NOT NULL,
    VehicleType     VARCHAR(50) NOT NULL,
    MSRP            DECIMAL(18,2) NOT NULL,
    CostRatio       DECIMAL(18,12) NOT NULL,
    BaseCost        DECIMAL(18,2) NOT NULL,
    DemandWeight    DECIMAL(18,12) NOT NULL,

    CONSTRAINT PK_Silver_DimVehicle
        PRIMARY KEY (VehicleID)
);
GO
