USE Dadwal_Motors_Analytics;
GO

CREATE OR ALTER VIEW gold.vw_FactSales
AS
SELECT
    SalesID,
    SalesDate,
    CustomerID,
    DealershipID,
    SalespersonID,
    VehicleID,
    SalesChannel,
    PaymentMethod,
    PaymentTermMonths,
    CustomerPurchaseNumber,
    CustomerPurchaseType,
    DaysSincePreviousPurchase,
    PurchaseIntervalBand,
    CustomerTenureMonths,
    CustomerTenureBand,
    Quantity,
    MSRP,
    ActualCost,
    BaseDiscountRate,
    PromotionAdjustment,
    FinalDiscountRate,
    MarketAdjustmentRate,
    SalePrice,
    Revenue,
    GrossProfit,
    GrossMarginRate,
    GrowthFactor,
    SeasonalityFactor,
    MonthStart
FROM silver.FactSales;
GO
