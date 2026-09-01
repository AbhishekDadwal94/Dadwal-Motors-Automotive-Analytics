/*
======================================================================
DADWAL MOTORS AUTOMOTIVE ANALYTICS
BRONZE - FACT SALES
======================================================================

Purpose:
    Create the raw Bronze representation of the frozen FactSales export.

Design:
    Bronze preserves the incoming CSV representation.
    Data typing and business transformations are handled downstream
    in the Silver layer.

Source:
    Python-generated frozen FactSales.csv

Expected rows:
    531,482

Expected columns:
    29

======================================================================
*/

USE Dadwal_Motors_Analytics;
GO

IF OBJECT_ID('bronze.FactSales', 'U') IS NOT NULL
BEGIN
    DROP TABLE bronze.FactSales;
END;
GO

CREATE TABLE bronze.FactSales
(
    SalesID                    VARCHAR(20) NULL,
    SalesDate                  VARCHAR(30) NULL,
    CustomerID                 VARCHAR(20) NULL,
    DealershipID               VARCHAR(20) NULL,
    SalespersonID              VARCHAR(20) NULL,
    VehicleID                  VARCHAR(20) NULL,
    SalesChannel               VARCHAR(30) NULL,
    PaymentMethod              VARCHAR(30) NULL,
    PaymentTermMonths          VARCHAR(20) NULL,
    CustomerPurchaseNumber     VARCHAR(20) NULL,
    CustomerPurchaseType       VARCHAR(30) NULL,
    DaysSincePreviousPurchase  VARCHAR(20) NULL,
    PurchaseIntervalBand       VARCHAR(30) NULL,
    CustomerTenureMonths       VARCHAR(20) NULL,
    CustomerTenureBand         VARCHAR(30) NULL,
    Quantity                   VARCHAR(20) NULL,
    MSRP                       VARCHAR(30) NULL,
    ActualCost                 VARCHAR(30) NULL,
    BaseDiscountRate           VARCHAR(30) NULL,
    PromotionAdjustment        VARCHAR(30) NULL,
    FinalDiscountRate          VARCHAR(30) NULL,
    MarketAdjustmentRate       VARCHAR(30) NULL,
    SalePrice                  VARCHAR(30) NULL,
    Revenue                    VARCHAR(30) NULL,
    GrossProfit                VARCHAR(30) NULL,
    GrossMarginRate            VARCHAR(30) NULL,
    GrowthFactor               VARCHAR(30) NULL,
    SeasonalityFactor          VARCHAR(30) NULL,
    MonthStart                 VARCHAR(30) NULL
);
GO
