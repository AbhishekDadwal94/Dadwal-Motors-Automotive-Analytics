USE Dadwal_Motors_Analytics;
GO

INSERT INTO silver.DimSalesperson
(
    SalespersonID,
    SalespersonName,
    DealershipID,
    SalesTeam,
    PerformanceTier,
    PerformanceWeight,
    SalesInfluenceWeight
)
SELECT
    NULLIF(LTRIM(RTRIM(SalespersonID)), ''),
    NULLIF(LTRIM(RTRIM(SalespersonName)), ''),
    NULLIF(LTRIM(RTRIM(DealershipID)), ''),
    NULLIF(LTRIM(RTRIM(SalesTeam)), ''),
    NULLIF(LTRIM(RTRIM(PerformanceTier)), ''),
    TRY_CONVERT(
        DECIMAL(18,12),
        TRY_CONVERT(FLOAT, PerformanceWeight)
    ),
    TRY_CONVERT(
        DECIMAL(18,12),
        TRY_CONVERT(FLOAT, SalesInfluenceWeight)
    )
FROM bronze.DimSalesperson;
GO
