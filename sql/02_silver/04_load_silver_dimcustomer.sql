USE Dadwal_Motors_Analytics;
GO

INSERT INTO silver.DimCustomer
(
    CustomerID,
    Province,
    CustomerSegment,
    RegistrationDate,
    CustomerTenureMonths,
    CustomerTenureBand
)
SELECT
    NULLIF(LTRIM(RTRIM(CustomerID)), ''),
    NULLIF(LTRIM(RTRIM(Province)), ''),
    NULLIF(LTRIM(RTRIM(CustomerSegment)), ''),
    TRY_CONVERT(DATE, RegistrationDate),
    TRY_CONVERT(INT, CustomerTenureMonths),
    NULLIF(LTRIM(RTRIM(CustomerTenureBand)), '')
FROM bronze.DimCustomer;
GO
