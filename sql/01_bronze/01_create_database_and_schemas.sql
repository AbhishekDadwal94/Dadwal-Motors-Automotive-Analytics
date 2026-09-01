/*
======================================================================
DADWAL MOTORS AUTOMOTIVE ANALYTICS
DATABASE INITIALIZATION
======================================================================

Purpose:
    Create the project database and Medallion Architecture schemas.

Architecture:
    Bronze  -> Raw / Staging
    Silver  -> Cleaned / Standardized
    Gold    -> Dimensional / Business-ready
    Views   -> Reporting / Analytical layer

======================================================================
*/

USE master;
GO

/* -------------------------------------------------------------------
   1. CREATE DATABASE
   ------------------------------------------------------------------- */

IF DB_ID(N'Dadwal_Motors_Analytics') IS NULL
BEGIN
    CREATE DATABASE Dadwal_Motors_Analytics;
    PRINT 'Database Dadwal_Motors_Analytics created successfully.';
END
ELSE
BEGIN
    PRINT 'Database Dadwal_Motors_Analytics already exists.';
END;
GO


/* -------------------------------------------------------------------
   2. USE PROJECT DATABASE
   ------------------------------------------------------------------- */

USE Dadwal_Motors_Analytics;
GO


/* -------------------------------------------------------------------
   3. CREATE MEDALLION ARCHITECTURE SCHEMAS
   ------------------------------------------------------------------- */

IF SCHEMA_ID(N'bronze') IS NULL
BEGIN
    EXEC(N'CREATE SCHEMA bronze');
    PRINT 'Schema bronze created.';
END;

IF SCHEMA_ID(N'silver') IS NULL
BEGIN
    EXEC(N'CREATE SCHEMA silver');
    PRINT 'Schema silver created.';
END;

IF SCHEMA_ID(N'gold') IS NULL
BEGIN
    EXEC(N'CREATE SCHEMA gold');
    PRINT 'Schema gold created.';
END;

IF SCHEMA_ID(N'views') IS NULL
BEGIN
    EXEC(N'CREATE SCHEMA views');
    PRINT 'Schema views created.';
END;
GO


/* -------------------------------------------------------------------
   4. VERIFY ARCHITECTURE
   ------------------------------------------------------------------- */

SELECT
    name AS SchemaName
FROM sys.schemas
WHERE name IN ('bronze', 'silver', 'gold', 'views')
ORDER BY
    CASE name
        WHEN 'bronze' THEN 1
        WHEN 'silver' THEN 2
        WHEN 'gold' THEN 3
        WHEN 'views' THEN 4
    END;
GO
