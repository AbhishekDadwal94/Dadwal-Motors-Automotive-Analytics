USE Dadwal_Motors_Analytics;
GO

INSERT INTO silver.DimDealership
(
    DealershipID,
    DealershipName,
    Province,
    Region,
    SalesCapacityWeight
)
SELECT
    NULLIF(LTRIM(RTRIM(DealershipID)), ''),
    NULLIF(LTRIM(RTRIM(DealershipName)), ''),
    NULLIF(LTRIM(RTRIM(Province)), ''),
    NULLIF(LTRIM(RTRIM(Region)), ''),
    TRY_CONVERT(
        DECIMAL(18,12),
        TRY_CONVERT(FLOAT, SalesCapacityWeight)
    )
FROM bronze.DimDealership;
GO
