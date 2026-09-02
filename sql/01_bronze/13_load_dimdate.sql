USE Dadwal_Motors_Analytics;
GO

BULK INSERT bronze.DimDate
FROM 'B:\Jobs\Project\Dadwal-Motors-Automotive-Analytics\data\Dadwal_Motors_PowerBI_Data\DimDate.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001',
    TABLOCK
);
GO
