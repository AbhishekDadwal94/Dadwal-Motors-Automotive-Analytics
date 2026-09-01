/*
======================================================================
DADWAL MOTORS AUTOMOTIVE ANALYTICS
BRONZE - FACT SALES LOAD
======================================================================

Purpose:
    Load the frozen Python-generated FactSales CSV into Bronze.

Source:
    FactSales.csv

Expected rows:
    531,482

Target:
    bronze.FactSales

======================================================================
*/

USE Dadwal_Motors_Analytics;
GO

BULK INSERT bronze.FactSales
FROM 'B:\Jobs\Project\Dadwal-Motors-Automotive-Analytics\data\Dadwal_Motors_PowerBI_Data\FactSales.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001',
    TABLOCK
);
GO

/* -------------------------------------------------------------------
   POST-LOAD VALIDATION
   ------------------------------------------------------------------- */

SELECT
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT SalesID) AS UniqueSalesIDs,
    MIN(SalesDate) AS FirstSalesDate,
    MAX(SalesDate) AS LastSalesDate
FROM bronze.FactSales;
GO
