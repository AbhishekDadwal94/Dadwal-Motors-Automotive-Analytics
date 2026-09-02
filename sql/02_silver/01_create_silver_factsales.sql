USE Dadwal_Motors_Analytics;
GO

IF OBJECT_ID('silver.FactSales', 'U') IS NOT NULL
    DROP TABLE silver.FactSales;
GO

CREATE TABLE silver.FactSales
(
    SalesID                    VARCHAR(20) NOT NULL,
    SalesDate                  DATE NOT NULL,
    CustomerID                 VARCHAR(20) NOT NULL,
    DealershipID               VARCHAR(20) NOT NULL,
    SalespersonID              VARCHAR(20) NOT NULL,
    VehicleID                  VARCHAR(20) NOT NULL,
    SalesChannel               VARCHAR(30) NOT NULL,
    PaymentMethod              VARCHAR(30) NOT NULL,
    PaymentTermMonths          INT NOT NULL,
    CustomerPurchaseNumber     INT NOT NULL,
    CustomerPurchaseType       VARCHAR(30) NOT NULL,
    DaysSincePreviousPurchase  INT NULL,
    PurchaseIntervalBand       VARCHAR(30) NOT NULL,
    CustomerTenureMonths       INT NOT NULL,
    CustomerTenureBand         VARCHAR(30) NOT NULL,
    Quantity                   INT NOT NULL,
    MSRP                       DECIMAL(18,2) NOT NULL,
    ActualCost                 DECIMAL(18,2) NOT NULL,
    BaseDiscountRate           DECIMAL(18,12) NOT NULL,
    PromotionAdjustment        DECIMAL(18,12) NOT NULL,
    FinalDiscountRate          DECIMAL(18,12) NOT NULL,
    MarketAdjustmentRate       DECIMAL(18,12) NOT NULL,
    SalePrice                  DECIMAL(18,2) NOT NULL,
    Revenue                    DECIMAL(18,2) NOT NULL,
    GrossProfit                DECIMAL(18,2) NOT NULL,
    GrossMarginRate             DECIMAL(18,12) NOT NULL,
    GrowthFactor                DECIMAL(18,12) NOT NULL,
    SeasonalityFactor           DECIMAL(18,12) NOT NULL,
    MonthStart                  DATE NOT NULL,

    CONSTRAINT PK_Silver_FactSales
        PRIMARY KEY (SalesID)
);
GO
