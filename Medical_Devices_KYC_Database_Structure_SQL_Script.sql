-- ================================================================================================
-- Medical Devices KYC Database - Drop & Create SQL Server Script
-- Style: Explicit Constraint / Separated Sections (DROP, CREATE, CONSTRAINTS, INDEXES, VIEWS, SPs)
-- ================================================================================================

USE [master];
GO
IF EXISTS (SELECT name FROM sys.databases WHERE name = N'Medical_Devices_KYC_Database')
    DROP DATABASE [Medical_Devices_KYC_Database];
GO
CREATE DATABASE [Medical_Devices_KYC_Database];
GO
USE [Medical_Devices_KYC_Database];
GO

-- ================================================================================================
-- USER-DEFINED TYPES
-- ================================================================================================
CREATE TYPE [dbo].[EmailAddress] FROM NVARCHAR(100) NULL;
GO
CREATE TYPE [dbo].[PhoneNumber] FROM NVARCHAR(25) NULL;
GO
CREATE TYPE [dbo].[WebURL] FROM NVARCHAR(255) NULL;
GO

-- ================================================================================================
-- CREATE TABLES (without inline constraints)
-- ================================================================================================

CREATE TABLE [dbo].[Suppliers] (
    [SupplierID]                    INT               IDENTITY(1000,1) NOT NULL,
    [SupplierName]                  NVARCHAR(200)     NOT NULL,
    [SupplierCountry]               NVARCHAR(100)     NOT NULL,
    [SupplierLocation]              NVARCHAR(200)     NULL,
    [SupplierAddress]               NVARCHAR(500)     NULL,
    [InstrumentCategory]            NVARCHAR(100)     NULL,
    [SupplierType]                  NVARCHAR(50)      NULL,
    [Website]                       [dbo].[WebURL]    NULL,
    [ContactPhone]                  [dbo].[PhoneNumber] NULL,
    [ContactEmail]                  [dbo].[EmailAddress] NULL,
    [LocalRepName]                  NVARCHAR(150)     NULL,
    [LocalRepPhone]                 [dbo].[PhoneNumber] NULL,
    [LocalRepEmail]                 [dbo].[EmailAddress] NULL,
    [SupplierRegistrationNumber]    NVARCHAR(100)     NULL,
    [ImportLicenseNumber]           NVARCHAR(100)     NULL,
    [PreferredPaymentTerms]         NVARCHAR(100)     NULL,
    [AverageLeadTimeDays]           INT               NULL,
    [IsISO13485_Compliant]          BIT               NOT NULL,
    [IsActive]                      BIT               NOT NULL,
    [rowguid]                       UNIQUEIDENTIFIER  ROWGUIDCOL NOT NULL,
    [CreatedDate]                   DATETIME          NOT NULL,
    [ModifiedDate]                  DATETIME          NOT NULL
);
GO

CREATE TABLE [dbo].[Employees] (
    [EmployeeID]            INT               IDENTITY(1,1) NOT NULL,
    [EmployeeCode]          NVARCHAR(20)      NULL,
    [EmployeeName]          NVARCHAR(100)     NOT NULL,
    [EmployeeNickName]      NVARCHAR(50)      NULL,
    [Designation]           NVARCHAR(100)     NULL,
    [Department]            NVARCHAR(100)     NULL,
    [SpecifiedTerritory]    NVARCHAR(200)     NULL,
    [RolePermissions]       NVARCHAR(200)     NULL,
    [EmployeeType]          NVARCHAR(50)      NULL,
    [EmergencyContact]      NVARCHAR(100)     NULL,
    [ContactPhone]          [dbo].[PhoneNumber] NOT NULL,
    [ContactWhatsApp]       [dbo].[PhoneNumber] NULL,
    [ContactEmail]          [dbo].[EmailAddress] NOT NULL,
    [IsActive]              BIT               NOT NULL,
    [rowguid]               UNIQUEIDENTIFIER  ROWGUIDCOL NOT NULL,
    [JoinDate]              DATE              NULL,
    [CreatedDate]           DATETIME          NOT NULL,
    [ModifiedDate]          DATETIME          NOT NULL
);
GO

CREATE TABLE [dbo].[Institutions] (
    [InstitutionID]                 INT               IDENTITY(1000,1) NOT NULL,
    [InstitutionName]               NVARCHAR(200)     NOT NULL,
    [InstitutionCategory]           NVARCHAR(100)     NULL,
    [InstitutionType]               NVARCHAR(50)      NOT NULL,
    [BusinessOwnership]             NVARCHAR(50)      NOT NULL,
    [InstitutionClassification]     NVARCHAR(20)      NOT NULL,
    [Location]                      NVARCHAR(200)     NOT NULL,
    [Address]                       NVARCHAR(500)     NULL,
    [District]                      NVARCHAR(100)     NULL,
    [Division]                      NVARCHAR(100)     NULL,
    [Country]                       NVARCHAR(100)     NOT NULL,
    [Website]                       [dbo].[WebURL]    NULL,
    [IsActive]                      BIT               NOT NULL,
    [rowguid]                       UNIQUEIDENTIFIER  ROWGUIDCOL NOT NULL,
    [CreatedDate]                   DATETIME          NOT NULL,
    [ModifiedDate]                  DATETIME          NOT NULL
);
GO

CREATE TABLE [dbo].[ContactPersons] (
    [ContactPersonID]           INT               IDENTITY(1,1) NOT NULL,
    [InstitutionID]             INT               NULL,
    [EmployeeID]                INT               NULL,
    [Title]                     NVARCHAR(10)      NULL,
    [ContactName]               NVARCHAR(100)     NOT NULL,
    [Designation]               NVARCHAR(100)     NULL,
    [Department]                NVARCHAR(100)     NULL,
    [ContactType]               NVARCHAR(50)      NOT NULL,
    [ContactPhone]              [dbo].[PhoneNumber] NOT NULL,
    [ContactEmail]              [dbo].[EmailAddress] NULL,
    [PreferredContactMethod]    NVARCHAR(50)      NULL,
    [AvailableHours]            NVARCHAR(100)     NULL,
    [BusinessCardPath]          NVARCHAR(500)     NULL,
    [OnlineProfileLinks]        NVARCHAR(500)     NULL,
    [Notes]                     NVARCHAR(1000)    NULL,
    [IsActive]                  BIT               NOT NULL,
    [rowguid]                   UNIQUEIDENTIFIER  ROWGUIDCOL NOT NULL,
    [CreatedDate]               DATETIME          NOT NULL,
    [ModifiedDate]              DATETIME          NOT NULL
);
GO

CREATE TABLE [dbo].[Devices] (
    [DeviceID]								INT               IDENTITY(1,1) NOT NULL,
    [SupplierID]                            INT               NULL,
    [DeviceName]							NVARCHAR(200)     NOT NULL,
    [DeviceType]							NVARCHAR(50)      NOT NULL,
    [DeviceCategory]						NVARCHAR(100)     NULL,
    [Department]                            NVARCHAR(100)     NOT NULL,
    [CountryOrigin]                         NVARCHAR(100)     NULL,
    [ManufacturerCompany]                   NVARCHAR(200)     NULL,
    [BrandName]                             NVARCHAR(100)     NULL,
    [ModelNumber]                           NVARCHAR(100)     NULL,
    [SerialNumberPattern]                   NVARCHAR(100)     NULL,
    [UDI]                                   NVARCHAR(200)     NULL,
    [DeviceClass]                           NVARCHAR(50)      NULL,
    [RegulatoryApprovals]                   NVARCHAR(200)     NULL,
    [ManufactureDate]                       DATE              NULL,
    [PurchaseDate]                          DATE              NULL,
    [PurchaseCost]                          DECIMAL(12,2)     NULL,
    [Currency]                              NVARCHAR(10)      NULL,
    [WarrantyPeriodMonths]                  INT               NULL,
    [WarrantyExpiryDate]                    DATE              NULL,
    [InstallationDate]                      DATE              NULL,
    [PowerRequirements]                     NVARCHAR(100)     NULL,
    [PowerConsumptionWatts]                 INT               NULL,
    [Dimensions]                            NVARCHAR(200)     NULL,
    [WeightKg]                              DECIMAL(8,2)      NULL,
    [OperatingTemperatureMin]               DECIMAL(6,2)      NULL,
    [OperatingTemperatureMax]               DECIMAL(6,2)      NULL,
    [StorageTemperatureMin]                 DECIMAL(6,2)      NULL,
    [StorageTemperatureMax]                 DECIMAL(6,2)      NULL,
    [HumidityRange]                         NVARCHAR(100)     NULL,
    [NoiseLevelDb]                          NVARCHAR(50)      NULL,
    [Connectivity]                          NVARCHAR(200)     NULL,
    [SoftwareVersion]                       NVARCHAR(50)      NULL,
    [FirmwareVersion]                       NVARCHAR(50)      NULL,
    [CalibrationIntervalDays]               INT               NULL,
    [LastCalibrationDate]                   DATE              NULL,
    [NextCalibrationDue]                    DATE              NULL,
    [PreventiveMaintenanceIntervalDays]     INT               NULL,
    [LastMaintenanceDate]                   DATE              NULL,
    [NextMaintenanceDue]                    DATE              NULL,
    [SafetyClass]                           NVARCHAR(50)      NULL,
    [Criticality]                           NVARCHAR(20)      NULL,
    [MinimumSparePartsOnHand]               INT               NULL,
    [DefaultReagentsList]                   NVARCHAR(MAX)     NULL,
    [DefaultPartsList]                      NVARCHAR(MAX)     NULL,
    [SpecificationLink]                     [dbo].[WebURL]    NULL,
    [UserManualPath]                        NVARCHAR(500)     NULL,
    [InstallationChecklistPath]             NVARCHAR(500)     NULL,
    [AcceptanceTestReportPath]              NVARCHAR(500)     NULL,
    [IsActive]                              BIT               NOT NULL,
    [rowguid]                               UNIQUEIDENTIFIER  ROWGUIDCOL NOT NULL,
    [CreatedDate]                           DATETIME          NOT NULL,
    [ModifiedDate]                          DATETIME          NOT NULL
);
GO

CREATE TABLE [dbo].[InstitutionDevices] (
    [InstitutionDeviceID]       INT               IDENTITY(1,1) NOT NULL,
    [InstitutionID]                 INT               NULL,
    [DeviceID]						INT               NULL,
    [SerialNumber]                  NVARCHAR(200)     NULL,
    [AssetTag]                      NVARCHAR(100)     NULL,
    [LocationWithinInstitution]     NVARCHAR(200)     NULL,
    [AssignedDepartment]            NVARCHAR(100)     NULL,
    [Status]                        NVARCHAR(50)      NOT NULL,
    [NumberOfMachines]              INT               NOT NULL,
    [IsBCOCSupplied]                BIT               NOT NULL,
    [BCOCInstrumentMark]            NVARCHAR(50)      NULL,
    [InstallationDate]              DATE              NULL,
    [CommissioningEngineer]         NVARCHAR(150)     NULL,
    [OwnershipType]                 NVARCHAR(50)      NULL,
    [PurchaseOrderNumber]           NVARCHAR(100)     NULL,
    [WarrantyExpiryDate]            DATE              NULL,
    [ServiceContractProvider]       NVARCHAR(200)     NULL,
    [ServiceContractNumber]         NVARCHAR(100)     NULL,
    [ServiceContractStatus]         NVARCHAR(50)      NULL,
    [LastPMSServiceDate]            DATE              NULL,
    [NextPMSDate]                   DATE              NULL,
    [LastCalibrationDate]           DATE              NULL,
    [NextCalibrationDue]            DATE              NULL,
    [Notes]                         NVARCHAR(1000)    NULL,
    [rowguid]                       UNIQUEIDENTIFIER  ROWGUIDCOL NOT NULL,
    [CreatedDate]                   DATETIME          NOT NULL,
    [ModifiedDate]                  DATETIME          NOT NULL
);
GO

CREATE TABLE [dbo].[Visits] (
    [VisitID]                           INT               IDENTITY(1,1) NOT NULL,
    [InstitutionID]                     INT               NULL,
    [EmployeeID]                        INT               NULL,
    [ContactPersonID]                   INT               NULL,
    [VisitDate]                         DATE              NOT NULL,
    [VisitMode]                         NVARCHAR(20)      NOT NULL,
    [VisitType]                         NVARCHAR(50)      NOT NULL,
    [VisitPurpose]                      NVARCHAR(500)     NULL,
    [VisitDescription]                  NVARCHAR(2000)    NULL,
    [VisitResults]                      NVARCHAR(2000)    NULL,
    [VisitDurationMinutes]              INT               NULL,
    [VisitEvidencePath]                 NVARCHAR(500)     NULL,
    [FollowUpAssignedToEmployeeID]      INT               NULL,
    [NextFollowUpDate]                  DATE              NULL,
    [rowguid]                           UNIQUEIDENTIFIER  ROWGUIDCOL NOT NULL,
    [CreatedDate]                       DATETIME          NOT NULL,
    [ModifiedDate]                      DATETIME          NOT NULL
);
GO

CREATE TABLE [dbo].[ComplaintRequests] (
    [ComplaintID]               INT               IDENTITY(3,1) NOT NULL,
    [InstitutionID]             INT               NOT NULL,
    [ContactPersonID]           INT               NULL,
    [ReceivedByEmployeeID]      INT               NULL,
    [TicketNumber]              NVARCHAR(100)     NULL,
    [ComplaintSource]           NVARCHAR(50)      NULL,
    [ComplaintDate]             DATETIME          NOT NULL,
    [ComplaintType]             NVARCHAR(50)      NOT NULL,
    [Priority]                  NVARCHAR(20)      NOT NULL,
    [SLA_TargetHours]           INT               NULL,
    [AssignedToEmployeeID]      INT               NULL,
    [EscalationLevel]           INT               NOT NULL,
    [IsUnderWarranty]           BIT               NOT NULL,
    [VendorNotified]            BIT               NOT NULL,
    [VendorResponseDate]        DATETIME          NULL,
    [ComplaintDescription]      NVARCHAR(2000)    NOT NULL,
    [Status]                    NVARCHAR(50)      NOT NULL,
    [ResolutionNotes]           NVARCHAR(2000)    NULL,
    [ResolvedDate]              DATETIME          NULL,
    [rowguid]                   UNIQUEIDENTIFIER  ROWGUIDCOL NOT NULL,
    [CreatedDate]               DATETIME          NOT NULL,
    [ModifiedDate]              DATETIME          NOT NULL
);
GO

CREATE TABLE [dbo].[DeviceDocuments] (
    [DocumentID]                INT               IDENTITY(1,1) NOT NULL,
    [DeviceID]					INT               NOT NULL,
    [DocType]                   NVARCHAR(100)     NOT NULL,
    [DocPath]                   NVARCHAR(500)     NOT NULL,
    [UploadedByEmployeeID]      INT               NULL,
    [UploadedDate]              DATETIME          NOT NULL
);
GO

CREATE TABLE [dbo].[DeviceParts] (
    [PartID]                            INT               IDENTITY(1,1) NOT NULL,
    [DeviceID]							INT               NULL,
    [PartName]                          NVARCHAR(200)     NOT NULL,
    [PartNumber]                        NVARCHAR(100)     NULL,
    [Manufacturer]                      NVARCHAR(200)     NULL,
    [PartCategory]                      NVARCHAR(100)     NULL,
    [IsConsumable]                      BIT               NOT NULL,
    [IsSafetyCritical]                  BIT               NOT NULL,
    [CompatibleModelList]               NVARCHAR(500)     NULL,
    [ExpectedShelfLifeMonths]           INT               NULL,
    [TypicalLeadTimeDays]               INT               NULL,
    [MinimumStockLevel]                 INT               NULL,
    [ReorderPoint]                      INT               NULL,
    [EstimatedCost]                     DECIMAL(12,2)     NULL,
    [Currency]                          NVARCHAR(10)      NULL,
    [SupplierID]                        INT               NULL,
    [SupplierPartNumber]                NVARCHAR(100)     NULL,
    [InstallationInstructionsPath]      NVARCHAR(500)     NULL,
    [WarrantyForPartMonths]             INT               NULL,
    [IsObsolete]                        BIT               NOT NULL,
    [IsActive]                          BIT               NOT NULL,
    [rowguid]                           UNIQUEIDENTIFIER  ROWGUIDCOL NOT NULL,
    [CreatedDate]                       DATETIME          NOT NULL,
    [ModifiedDate]                      DATETIME          NOT NULL
);
GO

CREATE TABLE [dbo].[DeviceReagents] (
    [ReagentID]                 INT               IDENTITY(1,1) NOT NULL,
    [DeviceID]               INT               NULL,
    [ReagentName]               NVARCHAR(200)     NOT NULL,
    [ReagentType]               NVARCHAR(100)     NULL,
    [Unit]                      NVARCHAR(50)      NULL,
    [PackSize]                  NVARCHAR(50)      NULL,
    [Manufacturer]              NVARCHAR(200)     NULL,
    [CatalogNumber]             NVARCHAR(100)     NULL,
    [SupplierCatalogNumber]     NVARCHAR(100)     NULL,
    [ManufacturerLotNumber]     NVARCHAR(100)     NULL,
    [BatchNumber]               NVARCHAR(100)     NULL,
    [ManufactureDate]           DATE              NULL,
    [ExpiryDate]                DATE              NULL,
    [ShelfLifeMonths]           INT               NULL,
    [StorageConditions]         NVARCHAR(200)     NULL,
    [ColdChainRequired]         BIT               NOT NULL,
    [TemperatureMin]            DECIMAL(6,2)      NULL,
    [TemperatureMax]            DECIMAL(6,2)      NULL,
    [QuantityOnHand]            DECIMAL(12,2)     NULL,
    [UnitsPerKit]               INT               NULL,
    [TestsPerUnit]              INT               NULL,
    [UnitsInStockUOM]           NVARCHAR(50)      NULL,
    [ReorderPoint]              DECIMAL(12,2)     NULL,
    [MinimumStockLevel]         DECIMAL(12,2)     NULL,
    [MaximumStockLevel]         DECIMAL(12,2)     NULL,
    [LeadTimeDays]              INT               NULL,
    [IsSupplyCritical]          BIT               NOT NULL,
    [RegulatoryNotes]           NVARCHAR(500)     NULL,
    [SafetyDataSheetPath]       NVARCHAR(500)     NULL,
    [MSDS_Required]             BIT               NOT NULL,
    [IsActive]                  BIT               NOT NULL,
    [CreatedDate]               DATETIME          NOT NULL,
    [ModifiedDate]              DATETIME          NOT NULL
);
GO

CREATE TABLE [dbo].[MaintenanceRecords] (
    [MaintenanceID]                 INT               IDENTITY(1,1) NOT NULL,
    [InstitutionDeviceID]       INT               NULL,
    [ComplaintID]                   INT               NULL,
    [PerformedByEmployeeID]         INT               NULL,
    [ContactPersonID]               INT               NULL,
    [WorkOrderNumber]               NVARCHAR(100)     NULL,
    [ServiceProvider]               NVARCHAR(200)     NULL,
    [MaintenanceDate]               DATE              NOT NULL,
    [MaintenanceType]               NVARCHAR(50)      NOT NULL,
    [ServiceContractType]           NVARCHAR(50)      NULL,
    [IssuesFound]                   NVARCHAR(2000)    NULL,
    [SolutionProvided]              NVARCHAR(2000)    NULL,
    [PartsReplaced]                 NVARCHAR(1000)    NULL,
    [PartsCost]                     DECIMAL(12,2)     NULL,
    [LaborHours]                    DECIMAL(5,2)      NULL,
    [TravelCost]                    DECIMAL(12,2)     NULL,
    [ServiceCost]                   DECIMAL(10,2)     NOT NULL,
    [BeforeImagePath]               NVARCHAR(500)     NULL,
    [AfterImagePath]                NVARCHAR(500)     NULL,
    [CalibrationCertificatePath]    NVARCHAR(500)     NULL,
    [TestResults]                   NVARCHAR(1000)    NULL,
    [MaintenanceResult]             NVARCHAR(50)      NOT NULL,
    [NextScheduledDate]             DATE              NULL,
    [Notes]                         NVARCHAR(1000)    NULL,
    [rowguid]                       UNIQUEIDENTIFIER  ROWGUIDCOL NOT NULL,
    [CreatedDate]                   DATETIME          NOT NULL,
    [ModifiedDate]                  DATETIME          NOT NULL
);
GO

CREATE TABLE [dbo].[MaintenanceDeviceParts] (
    [MaintenanceDevicePartID]     INT               IDENTITY(1,1) NOT NULL,
    [MaintenanceID]         INT               NULL,
    [PartID]                INT               NULL,
    [Quantity]              DECIMAL(12,2)     NOT NULL,
    [UnitCost]              DECIMAL(12,2)     NULL,
    [TotalCost]             AS ([Quantity] * [UnitCost])
);
GO

CREATE TABLE [dbo].[StockMovements] (
    [StockMovementID]           INT               IDENTITY(1,1) NOT NULL,
    [ItemType]                  NVARCHAR(20)      NOT NULL,
    [ItemID]                    INT               NOT NULL,
    [Quantity]                  DECIMAL(12,2)     NOT NULL,
    [MovementType]              NVARCHAR(50)      NOT NULL,
    [Reference]                 NVARCHAR(200)     NULL,
    [MovementDate]              DATETIME          NOT NULL,
    [PerformedByEmployeeID]     INT               NULL
);
GO

CREATE TABLE [dbo].[SurveyQuestions] (
    [QuestionID]            INT               IDENTITY(1,1) NOT NULL,
    [QuestionText]          NVARCHAR(500)     NOT NULL,
    [QuestionCategory]      NVARCHAR(100)     NULL,
    [QuestionType]          NVARCHAR(50)      NOT NULL,
    [AppliesTo]             NVARCHAR(50)      NOT NULL,
    [RelatedDeviceID]    INT               NULL,
    [RelatedReagentID]      INT               NULL,
    [FormVersion]           NVARCHAR(20)      NULL,
    [IsRequired]            BIT               NOT NULL,
    [DisplayOrder]          INT               NULL,
    [IsActive]              BIT               NOT NULL,
    [CreatedDate]           DATETIME          NOT NULL,
    [ModifiedDate]          DATETIME          NOT NULL
);
GO

CREATE TABLE [dbo].[SurveyResponses] (
    [ResponseID]                INT               IDENTITY(1,1) NOT NULL,
    [VisitID]                   INT               NULL,
    [QuestionID]                INT               NULL,
    [ContactPersonID]           INT               NULL,
    [SurveyType]                NVARCHAR(10)      NOT NULL,
    [FormVersion]               NVARCHAR(20)      NULL,
    [RespondentName]            NVARCHAR(150)     NULL,
    [RespondentEmail]           NVARCHAR(200)     NULL,
    [RespondentRole]            NVARCHAR(100)     NULL,
    [ResponseText]              NVARCHAR(2000)    NULL,
    [ResponseRating]            INT               NULL,
    [AttachmentsPath]           NVARCHAR(500)     NULL,
    [IPAddress]                 NVARCHAR(45)      NULL,
    [SubmissionURL]             NVARCHAR(500)     NULL,
    [SubmittedVia]              NVARCHAR(50)      NULL,
    [IsVerified]                BIT               NOT NULL,
    [VerifiedByEmployeeID]      INT               NULL,
    [VerificationDate]          DATETIME          NULL,
    [CreatedDate]               DATETIME          NOT NULL
);
GO

-- ============================================================
-- 1. Roles
-- ============================================================
-- IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'Roles')
CREATE TABLE [dbo].[AspNetRoles] (
    [Id]               NVARCHAR(450)   NOT NULL,
    [Name]             NVARCHAR(256)   NULL,
    [NormalizedName]   NVARCHAR(256)   NULL,
    [ConcurrencyStamp] NVARCHAR(MAX)   NULL,
    CONSTRAINT [PK_Roles] PRIMARY KEY ([Id])
);
GO

-- ============================================================
-- 2. Users  (with custom AppUser fields)
-- ============================================================
-- IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'Users')
CREATE TABLE [dbo].[AspNetUsers] (
    [Id]                   NVARCHAR(450)   NOT NULL,
    -- Custom AppUser fields
    [FullName]             NVARCHAR(MAX)   NOT NULL DEFAULT '',
    [Department]           NVARCHAR(MAX)   NULL,
    [CreatedAt]            DATETIME2       NOT NULL DEFAULT GETUTCDATE(),
    -- Standard Identity fields
    [UserName]             NVARCHAR(256)   NULL,
    [NormalizedUserName]   NVARCHAR(256)   NULL,
    [Email]                NVARCHAR(256)   NULL,
    [NormalizedEmail]      NVARCHAR(256)   NULL,
    [EmailConfirmed]       BIT             NOT NULL DEFAULT 0,
    [PasswordHash]         NVARCHAR(MAX)   NULL,
    [SecurityStamp]        NVARCHAR(MAX)   NULL,
    [ConcurrencyStamp]     NVARCHAR(MAX)   NULL,
    [PhoneNumber]          NVARCHAR(MAX)   NULL,
    [PhoneNumberConfirmed] BIT             NOT NULL DEFAULT 0,
    [TwoFactorEnabled]     BIT             NOT NULL DEFAULT 0,
    [LockoutEnd]           DATETIMEOFFSET  NULL,
    [LockoutEnabled]       BIT             NOT NULL DEFAULT 1,
    [AccessFailedCount]    INT             NOT NULL DEFAULT 0,
    CONSTRAINT [PK_Users] PRIMARY KEY ([Id])
);
GO

-- ============================================================
-- 3. UserRoles  (many-to-many join)
-- ============================================================
-- IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'UserRoles')
CREATE TABLE [dbo].[AspNetUserRoles] (
    [UserId] NVARCHAR(450) NOT NULL,
    [RoleId] NVARCHAR(450) NOT NULL,
    CONSTRAINT [PK_UserRoles] PRIMARY KEY ([UserId], [RoleId]),
    CONSTRAINT [FK_UserRoles_Users]
        FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_UserRoles_Roles]
        FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AspNetRoles] ([Id]) ON DELETE CASCADE
);
GO

-- ============================================================
-- 4. UserClaims
-- ============================================================
-- IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'UserClaims')
CREATE TABLE [dbo].[AspNetUserClaims] (
    [Id]         INT             NOT NULL IDENTITY(1,1),
    [UserId]     NVARCHAR(450)   NOT NULL,
    [ClaimType]  NVARCHAR(MAX)   NULL,
    [ClaimValue] NVARCHAR(MAX)   NULL,
    CONSTRAINT [PK_UserClaims] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_UserClaims_Users]
        FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
);
GO

-- ============================================================
-- 5. RoleClaims
-- ============================================================
-- IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RoleClaims')
CREATE TABLE [dbo].[AspNetRoleClaims] (
    [Id]         INT             NOT NULL IDENTITY(1,1),
    [RoleId]     NVARCHAR(450)   NOT NULL,
    [ClaimType]  NVARCHAR(MAX)   NULL,
    [ClaimValue] NVARCHAR(MAX)   NULL,
    CONSTRAINT [PK_RoleClaims] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_RoleClaims_Roles]
        FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AspNetRoles] ([Id]) ON DELETE CASCADE
);
GO

-- ============================================================
-- 6. UserLogins
-- ============================================================
-- IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'UserLogins')
CREATE TABLE [dbo].[AspNetUserLogins] (
    [LoginProvider]       NVARCHAR(450) NOT NULL,
    [ProviderKey]         NVARCHAR(450) NOT NULL,
    [ProviderDisplayName] NVARCHAR(MAX) NULL,
    [UserId]              NVARCHAR(450) NOT NULL,
    CONSTRAINT [PK_UserLogins] PRIMARY KEY ([LoginProvider],[ProviderKey]),
    CONSTRAINT [FK_UserLogins_Users]
        FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
);
GO

-- ============================================================
-- 7. UserTokens
-- ============================================================
-- IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'UserTokens')
CREATE TABLE [dbo].[AspNetUserTokens] (
    [UserId]        NVARCHAR(450) NOT NULL,
    [LoginProvider] NVARCHAR(450) NOT NULL,
    [Name]          NVARCHAR(450) NOT NULL,
    [Value]         NVARCHAR(MAX) NULL,
    CONSTRAINT [PK_UserTokens] PRIMARY KEY ([UserId],[LoginProvider],[Name]),
    CONSTRAINT [FK_UserTokens_Users]
        FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
);
GO

-- ================================================================================================
-- PRIMARY KEYS
-- ================================================================================================
ALTER TABLE [dbo].[Suppliers]
ADD CONSTRAINT pk_Suppliers_SupplierID PRIMARY KEY (SupplierID);

ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT pk_Employees_EmployeeID PRIMARY KEY (EmployeeID);

ALTER TABLE [dbo].[Institutions]
ADD CONSTRAINT pk_Institutions_InstitutionID PRIMARY KEY (InstitutionID);

ALTER TABLE [dbo].[ContactPersons]
ADD CONSTRAINT pk_ContactPersons_ContactPersonID PRIMARY KEY (ContactPersonID);

ALTER TABLE [dbo].[Devices]
ADD CONSTRAINT pk_Devices_DeviceID PRIMARY KEY (DeviceID);

ALTER TABLE [dbo].[InstitutionDevices]
ADD CONSTRAINT pk_InstitutionDevices_InstitutionDeviceID PRIMARY KEY (InstitutionDeviceID);

ALTER TABLE [dbo].[Visits]
ADD CONSTRAINT pk_Visits_VisitID PRIMARY KEY (VisitID);

ALTER TABLE [dbo].[ComplaintRequests]
ADD CONSTRAINT pk_ComplaintRequests_ComplaintID PRIMARY KEY (ComplaintID);

ALTER TABLE [dbo].[DeviceDocuments]
ADD CONSTRAINT pk_DeviceDocuments_DocumentID PRIMARY KEY (DocumentID);

ALTER TABLE [dbo].[DeviceParts]
ADD CONSTRAINT pk_DeviceParts_PartID PRIMARY KEY (PartID);

ALTER TABLE [dbo].[DeviceReagents]
ADD CONSTRAINT pk_DeviceReagents_ReagentID PRIMARY KEY (ReagentID);

ALTER TABLE [dbo].[MaintenanceRecords]
ADD CONSTRAINT pk_MaintenanceRecords_MaintenanceID PRIMARY KEY (MaintenanceID);

ALTER TABLE [dbo].[MaintenanceDeviceParts]
ADD CONSTRAINT pk_MaintenanceDeviceParts_MaintenanceDevicePartID PRIMARY KEY (MaintenanceDevicePartID);

ALTER TABLE [dbo].[StockMovements]
ADD CONSTRAINT pk_StockMovements_StockMovementID PRIMARY KEY (StockMovementID);

ALTER TABLE [dbo].[SurveyQuestions]
ADD CONSTRAINT pk_SurveyQuestions_QuestionID PRIMARY KEY (QuestionID);

ALTER TABLE [dbo].[SurveyResponses]
ADD CONSTRAINT pk_SurveyResponses_ResponseID PRIMARY KEY (ResponseID);

-- ================================================================================================
-- UNIQUE CONSTRAINTS
-- ================================================================================================
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT unique_Employees_EmployeeCode UNIQUE (EmployeeCode);

ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT unique_Employees_rowguid UNIQUE (rowguid);

ALTER TABLE [dbo].[Suppliers]
ADD CONSTRAINT unique_Suppliers_rowguid UNIQUE (rowguid);

ALTER TABLE [dbo].[Institutions]
ADD CONSTRAINT unique_Institutions_rowguid UNIQUE (rowguid);

ALTER TABLE [dbo].[ContactPersons]
ADD CONSTRAINT unique_ContactPersons_rowguid UNIQUE (rowguid);

ALTER TABLE [dbo].[Devices]
ADD CONSTRAINT unique_Devices_rowguid UNIQUE (rowguid);

ALTER TABLE [dbo].[InstitutionDevices]
ADD CONSTRAINT unique_InstitutionDevices_rowguid UNIQUE (rowguid);

ALTER TABLE [dbo].[Visits]
ADD CONSTRAINT unique_Visits_rowguid UNIQUE (rowguid);

ALTER TABLE [dbo].[ComplaintRequests]
ADD CONSTRAINT unique_ComplaintRequests_rowguid UNIQUE (rowguid);

ALTER TABLE [dbo].[DeviceParts]
ADD CONSTRAINT unique_DeviceParts_rowguid UNIQUE (rowguid);

ALTER TABLE [dbo].[MaintenanceRecords]
ADD CONSTRAINT unique_MaintenanceRecords_rowguid UNIQUE (rowguid);

-- ================================================================================================
-- FOREIGN KEYS
-- ================================================================================================
ALTER TABLE [dbo].[Devices]
ADD CONSTRAINT fk_Devices_SupplierID
FOREIGN KEY (SupplierID) REFERENCES [dbo].[Suppliers](SupplierID) ON DELETE SET NULL;
--
ALTER TABLE [dbo].[ContactPersons]
ADD CONSTRAINT fk_ContactPersons_InstitutionID
FOREIGN KEY (InstitutionID) REFERENCES [dbo].[Institutions](InstitutionID) ON DELETE SET NULL;

ALTER TABLE [dbo].[ContactPersons]
ADD CONSTRAINT fk_ContactPersons_EmployeeID
FOREIGN KEY (EmployeeID) REFERENCES [dbo].[Employees](EmployeeID) ON DELETE SET NULL;
--
ALTER TABLE [dbo].[InstitutionDevices]
ADD CONSTRAINT fk_InstitutionDevices_InstitutionID
FOREIGN KEY (InstitutionID) REFERENCES [dbo].[Institutions](InstitutionID) ON DELETE SET NULL;

ALTER TABLE [dbo].[InstitutionDevices]
ADD CONSTRAINT fk_InstitutionDevices_DeviceID
FOREIGN KEY (DeviceID) REFERENCES [dbo].[Devices](DeviceID) ON DELETE SET NULL;
--
ALTER TABLE [dbo].[Visits]
ADD CONSTRAINT fk_Visits_InstitutionID
FOREIGN KEY (InstitutionID) REFERENCES [dbo].[Institutions](InstitutionID) ON DELETE SET NULL;

ALTER TABLE [dbo].[Visits]
ADD CONSTRAINT fk_Visits_EmployeeID
FOREIGN KEY (EmployeeID) REFERENCES [dbo].[Employees](EmployeeID) ON DELETE SET NULL;

ALTER TABLE [dbo].[Visits]
ADD CONSTRAINT fk_Visits_ContactPersonID
FOREIGN KEY (ContactPersonID) REFERENCES [dbo].[ContactPersons](ContactPersonID) ON DELETE SET NULL;
--
ALTER TABLE [dbo].[ComplaintRequests]
ADD CONSTRAINT fk_ComplaintRequests_InstitutionID
FOREIGN KEY (InstitutionID) REFERENCES [dbo].[Institutions](InstitutionID) ON DELETE CASCADE;

ALTER TABLE [dbo].[ComplaintRequests]
ADD CONSTRAINT fk_ComplaintRequests_ReceivedByEmployeeID
FOREIGN KEY (ReceivedByEmployeeID) REFERENCES [dbo].[Employees](EmployeeID) ON DELETE SET NULL;

ALTER TABLE [dbo].[ComplaintRequests]
ADD CONSTRAINT fk_ComplaintRequests_ContactPersonID
FOREIGN KEY (ContactPersonID) REFERENCES [dbo].[ContactPersons](ContactPersonID) ON DELETE SET NULL;
--
ALTER TABLE [dbo].[DeviceDocuments]
ADD CONSTRAINT fk_DeviceDocuments_DeviceID
FOREIGN KEY (DeviceID) REFERENCES [dbo].[Devices](DeviceID) ON DELETE CASCADE;

ALTER TABLE [dbo].[DeviceDocuments]
ADD CONSTRAINT fk_DeviceDocuments_UploadedByEmployeeID
FOREIGN KEY (UploadedByEmployeeID) REFERENCES [dbo].[Employees](EmployeeID) ON DELETE SET NULL;
--
ALTER TABLE [dbo].[DeviceParts]
ADD CONSTRAINT fk_DeviceParts_DeviceID
FOREIGN KEY (DeviceID) REFERENCES [dbo].[Devices](DeviceID) ON DELETE SET NULL;

ALTER TABLE [dbo].[DeviceParts]
ADD CONSTRAINT fk_DeviceParts_SupplierID
FOREIGN KEY (SupplierID) REFERENCES [dbo].[Suppliers](SupplierID) ON DELETE SET NULL;
--
ALTER TABLE [dbo].[DeviceReagents]
ADD CONSTRAINT fk_DeviceReagents_DeviceID
FOREIGN KEY (DeviceID) REFERENCES [dbo].[Devices](DeviceID) ON DELETE SET NULL;
--
ALTER TABLE [dbo].[MaintenanceRecords]
ADD CONSTRAINT fk_MaintenanceRecords_InstitutionDeviceID
FOREIGN KEY (InstitutionDeviceID) REFERENCES [dbo].[InstitutionDevices](InstitutionDeviceID) ON DELETE SET NULL;

ALTER TABLE [dbo].[MaintenanceRecords]
ADD CONSTRAINT fk_MaintenanceRecords_ComplaintID
FOREIGN KEY (ComplaintID) REFERENCES [dbo].[ComplaintRequests](ComplaintID) ON DELETE SET NULL;

ALTER TABLE [dbo].[MaintenanceRecords]
ADD CONSTRAINT fk_MaintenanceRecords_PerformedByEmployeeID
FOREIGN KEY (PerformedByEmployeeID) REFERENCES [dbo].[Employees](EmployeeID) ON DELETE SET NULL;

ALTER TABLE [dbo].[MaintenanceRecords]
ADD CONSTRAINT fk_MaintenanceRecords_ContactPersonID
FOREIGN KEY (ContactPersonID) REFERENCES [dbo].[ContactPersons](ContactPersonID) ON DELETE SET NULL;
--
ALTER TABLE [dbo].[MaintenanceDeviceParts]
ADD CONSTRAINT fk_MaintenanceDeviceParts_MaintenanceID
FOREIGN KEY (MaintenanceID) REFERENCES [dbo].[MaintenanceRecords](MaintenanceID) ON DELETE SET NULL;

ALTER TABLE [dbo].[MaintenanceDeviceParts]
ADD CONSTRAINT fk_MaintenanceDeviceParts_PartID
FOREIGN KEY (PartID) REFERENCES [dbo].[DeviceParts](PartID) ON DELETE SET NULL;
--
ALTER TABLE [dbo].[StockMovements]
ADD CONSTRAINT fk_StockMovements_PerformedByEmployeeID
FOREIGN KEY (PerformedByEmployeeID) REFERENCES [dbo].[Employees](EmployeeID) ON DELETE SET NULL;
--
ALTER TABLE [dbo].[SurveyQuestions]
ADD CONSTRAINT fk_SurveyQuestions_RelatedDeviceID
FOREIGN KEY (RelatedDeviceID) REFERENCES [dbo].[Devices](DeviceID) ON DELETE SET NULL;

ALTER TABLE [dbo].[SurveyQuestions]
ADD CONSTRAINT fk_SurveyQuestions_RelatedReagentID
FOREIGN KEY (RelatedReagentID) REFERENCES [dbo].[DeviceReagents](ReagentID) ON DELETE SET NULL;
--
ALTER TABLE [dbo].[SurveyResponses]
ADD CONSTRAINT fk_SurveyResponses_VisitID
FOREIGN KEY (VisitID) REFERENCES [dbo].[Visits](VisitID) ON DELETE SET NULL;

ALTER TABLE [dbo].[SurveyResponses]
ADD CONSTRAINT fk_SurveyResponses_QuestionID
FOREIGN KEY (QuestionID) REFERENCES [dbo].[SurveyQuestions](QuestionID) ON DELETE SET NULL;

ALTER TABLE [dbo].[SurveyResponses]
ADD CONSTRAINT fk_SurveyResponses_ContactPersonID
FOREIGN KEY (ContactPersonID) REFERENCES [dbo].[ContactPersons](ContactPersonID) ON DELETE SET NULL;

-- ================================================================================================
-- CHECK CONSTRAINTS
-- ================================================================================================
ALTER TABLE [dbo].[Institutions]
ADD CONSTRAINT ck_Institutions_InstitutionType
CHECK (InstitutionType IN ('Government', 'Private', 'NGO', 'International'));

ALTER TABLE [dbo].[Institutions]
ADD CONSTRAINT ck_Institutions_BusinessOwnership
CHECK (BusinessOwnership IN ('Government', 'Corporate', 'Shared Partnership', 'Proprietorship'));

ALTER TABLE [dbo].[Institutions]
ADD CONSTRAINT ck_Institutions_InstitutionClassification
CHECK (InstitutionClassification IN ('Class A', 'Class B', 'Class C'));

ALTER TABLE [dbo].[ContactPersons]
ADD CONSTRAINT ck_ContactPersons_ContactType
CHECK (ContactType IN ('Key Person', 'Doctor', 'Consultant', 'Purchase Officer', 'Lab Manager', 'Other'));

ALTER TABLE [dbo].[InstitutionDevices]
ADD CONSTRAINT ck_InstitutionDevices_NumberOfMachines
CHECK (NumberOfMachines > 0);

ALTER TABLE [dbo].[Devices]
ADD CONSTRAINT ck_Devices_DeviceType
CHECK (DeviceType IN ('Automatic', 'Semi-Automatic', 'Manual'));

ALTER TABLE [dbo].[SurveyResponses]
ADD CONSTRAINT ck_SurveyResponses_SurveyType
CHECK (SurveyType IN ('Visit', 'Online'));

ALTER TABLE [dbo].[SurveyResponses]
ADD CONSTRAINT ck_SurveyResponses_ResponseRating
CHECK (ResponseRating >= 1 AND ResponseRating <= 10);

-- ================================================================================================
-- DEFAULT CONSTRAINTS
-- ================================================================================================
ALTER TABLE [dbo].[Suppliers] ADD DEFAULT (0)        FOR IsISO13485_Compliant;
ALTER TABLE [dbo].[Suppliers] ADD DEFAULT (1)        FOR IsActive;
ALTER TABLE [dbo].[Suppliers] ADD DEFAULT (NEWID())  FOR rowguid;
ALTER TABLE [dbo].[Suppliers] ADD DEFAULT (GETDATE()) FOR CreatedDate;
ALTER TABLE [dbo].[Suppliers] ADD DEFAULT (GETDATE()) FOR ModifiedDate;
--
ALTER TABLE [dbo].[Employees] ADD DEFAULT (1)        FOR IsActive;
ALTER TABLE [dbo].[Employees] ADD DEFAULT (NEWID())  FOR rowguid;
ALTER TABLE [dbo].[Employees] ADD DEFAULT (GETDATE()) FOR CreatedDate;
ALTER TABLE [dbo].[Employees] ADD DEFAULT (GETDATE()) FOR ModifiedDate;
--
ALTER TABLE [dbo].[Institutions] ADD DEFAULT ('Bangladesh') FOR Country;
ALTER TABLE [dbo].[Institutions] ADD DEFAULT (1)        FOR IsActive;
ALTER TABLE [dbo].[Institutions] ADD DEFAULT (NEWID())  FOR rowguid;
ALTER TABLE [dbo].[Institutions] ADD DEFAULT (GETDATE()) FOR CreatedDate;
ALTER TABLE [dbo].[Institutions] ADD DEFAULT (GETDATE()) FOR ModifiedDate;
--
ALTER TABLE [dbo].[ContactPersons] ADD DEFAULT (1)        FOR IsActive;
ALTER TABLE [dbo].[ContactPersons] ADD DEFAULT (NEWID())  FOR rowguid;
ALTER TABLE [dbo].[ContactPersons] ADD DEFAULT (GETDATE()) FOR CreatedDate;
ALTER TABLE [dbo].[ContactPersons] ADD DEFAULT (GETDATE()) FOR ModifiedDate;
--
ALTER TABLE [dbo].[Devices] ADD DEFAULT (1)        FOR IsActive;
ALTER TABLE [dbo].[Devices] ADD DEFAULT (NEWID())  FOR rowguid;
ALTER TABLE [dbo].[Devices] ADD DEFAULT (GETDATE()) FOR CreatedDate;
ALTER TABLE [dbo].[Devices] ADD DEFAULT (GETDATE()) FOR ModifiedDate;
--
ALTER TABLE [dbo].[InstitutionDevices] ADD DEFAULT ('Active') FOR Status;
ALTER TABLE [dbo].[InstitutionDevices] ADD DEFAULT (1)        FOR NumberOfMachines;
ALTER TABLE [dbo].[InstitutionDevices] ADD DEFAULT (0)        FOR IsBCOCSupplied;
ALTER TABLE [dbo].[InstitutionDevices] ADD DEFAULT (NEWID())  FOR rowguid;
ALTER TABLE [dbo].[InstitutionDevices] ADD DEFAULT (GETDATE()) FOR CreatedDate;
ALTER TABLE [dbo].[InstitutionDevices] ADD DEFAULT (GETDATE()) FOR ModifiedDate;
--
ALTER TABLE [dbo].[Visits] ADD DEFAULT ('Onsite')   FOR VisitMode;
ALTER TABLE [dbo].[Visits] ADD DEFAULT (NEWID())    FOR rowguid;
ALTER TABLE [dbo].[Visits] ADD DEFAULT (GETDATE())  FOR CreatedDate;
ALTER TABLE [dbo].[Visits] ADD DEFAULT (GETDATE())  FOR ModifiedDate;
--
ALTER TABLE [dbo].[ComplaintRequests] ADD DEFAULT (GETDATE())  FOR ComplaintDate;
ALTER TABLE [dbo].[ComplaintRequests] ADD DEFAULT ('Medium')   FOR Priority;
ALTER TABLE [dbo].[ComplaintRequests] ADD DEFAULT (0)          FOR EscalationLevel;
ALTER TABLE [dbo].[ComplaintRequests] ADD DEFAULT (0)          FOR IsUnderWarranty;
ALTER TABLE [dbo].[ComplaintRequests] ADD DEFAULT (0)          FOR VendorNotified;
ALTER TABLE [dbo].[ComplaintRequests] ADD DEFAULT ('Open')     FOR Status;
ALTER TABLE [dbo].[ComplaintRequests] ADD DEFAULT (NEWID())    FOR rowguid;
ALTER TABLE [dbo].[ComplaintRequests] ADD DEFAULT (GETDATE())  FOR CreatedDate;
ALTER TABLE [dbo].[ComplaintRequests] ADD DEFAULT (GETDATE())  FOR ModifiedDate;
--
ALTER TABLE [dbo].[DeviceDocuments] ADD DEFAULT (GETDATE()) FOR UploadedDate;
--
ALTER TABLE [dbo].[DeviceParts] ADD DEFAULT (0)        FOR IsConsumable;
ALTER TABLE [dbo].[DeviceParts] ADD DEFAULT (0)        FOR IsSafetyCritical;
ALTER TABLE [dbo].[DeviceParts] ADD DEFAULT (0)        FOR IsObsolete;
ALTER TABLE [dbo].[DeviceParts] ADD DEFAULT (1)        FOR IsActive;
ALTER TABLE [dbo].[DeviceParts] ADD DEFAULT (NEWID())  FOR rowguid;
ALTER TABLE [dbo].[DeviceParts] ADD DEFAULT (GETDATE()) FOR CreatedDate;
ALTER TABLE [dbo].[DeviceParts] ADD DEFAULT (GETDATE()) FOR ModifiedDate;
--
ALTER TABLE [dbo].[DeviceReagents] ADD DEFAULT (0)        FOR ColdChainRequired;
ALTER TABLE [dbo].[DeviceReagents] ADD DEFAULT (0)        FOR IsSupplyCritical;
ALTER TABLE [dbo].[DeviceReagents] ADD DEFAULT (0)        FOR MSDS_Required;
ALTER TABLE [dbo].[DeviceReagents] ADD DEFAULT (1)        FOR IsActive;
ALTER TABLE [dbo].[DeviceReagents] ADD DEFAULT (GETDATE()) FOR CreatedDate;
ALTER TABLE [dbo].[DeviceReagents] ADD DEFAULT (GETDATE()) FOR ModifiedDate;
--
ALTER TABLE [dbo].[MaintenanceRecords] ADD DEFAULT (0.00)      FOR ServiceCost;
ALTER TABLE [dbo].[MaintenanceRecords] ADD DEFAULT (NEWID())   FOR rowguid;
ALTER TABLE [dbo].[MaintenanceRecords] ADD DEFAULT (GETDATE()) FOR CreatedDate;
ALTER TABLE [dbo].[MaintenanceRecords] ADD DEFAULT (GETDATE()) FOR ModifiedDate;
--
ALTER TABLE [dbo].[StockMovements] ADD DEFAULT (GETDATE()) FOR MovementDate;
--
ALTER TABLE [dbo].[SurveyQuestions] ADD DEFAULT ('General') FOR AppliesTo;
ALTER TABLE [dbo].[SurveyQuestions] ADD DEFAULT (0)         FOR IsRequired;
ALTER TABLE [dbo].[SurveyQuestions] ADD DEFAULT (1)         FOR IsActive;
ALTER TABLE [dbo].[SurveyQuestions] ADD DEFAULT (GETDATE()) FOR CreatedDate;
ALTER TABLE [dbo].[SurveyQuestions] ADD DEFAULT (GETDATE()) FOR ModifiedDate;
--
ALTER TABLE [dbo].[SurveyResponses] ADD DEFAULT (0)         FOR IsVerified;
ALTER TABLE [dbo].[SurveyResponses] ADD DEFAULT (GETDATE()) FOR CreatedDate;

-- ================================================================================================
-- INDEXES
-- ================================================================================================
CREATE NONCLUSTERED INDEX ix_Employees_Territory ON [dbo].[Employees] (SpecifiedTerritory ASC);

CREATE NONCLUSTERED INDEX ix_Institutions_Location ON [dbo].[Institutions] (Location ASC, District ASC);
CREATE NONCLUSTERED INDEX ix_Institutions_Type ON [dbo].[Institutions] (InstitutionType ASC, InstitutionClassification ASC);

CREATE NONCLUSTERED INDEX ix_ContactPersons_Institution ON [dbo].[ContactPersons] (InstitutionID ASC);
CREATE NONCLUSTERED INDEX ix_ContactPersons_Employee ON [dbo].[ContactPersons] (EmployeeID ASC);

CREATE NONCLUSTERED INDEX ix_Devices_Department ON [dbo].[Devices] (Department ASC);
CREATE NONCLUSTERED INDEX ix_Devices_Manufacturer ON [dbo].[Devices] (ManufacturerCompany ASC, BrandName ASC);

CREATE UNIQUE NONCLUSTERED INDEX uq_InstitutionDevices_Institution_Device ON [dbo].[InstitutionDevices] (InstitutionID ASC, DeviceID ASC);

CREATE NONCLUSTERED INDEX ix_Visits_Date ON [dbo].[Visits] (VisitDate DESC);
CREATE NONCLUSTERED INDEX ix_Visits_Institution ON [dbo].[Visits] (InstitutionID ASC, VisitDate ASC);

CREATE NONCLUSTERED INDEX ix_Complaints_Status ON [dbo].[ComplaintRequests] (Status ASC, ComplaintDate ASC);

CREATE NONCLUSTERED INDEX ix_Maintenance_Date ON [dbo].[MaintenanceRecords] (MaintenanceDate DESC);

CREATE UNIQUE INDEX [RoleNameIndex]
    ON [dbo].[AspNetRoles] ([NormalizedName])
    WHERE [NormalizedName] IS NOT NULL;
GO

CREATE UNIQUE INDEX [UserNameIndex]
    ON [dbo].[AspNetUsers] ([NormalizedUserName])
    WHERE [NormalizedUserName] IS NOT NULL;

CREATE INDEX [EmailIndex]
    ON [dbo].[AspNetUsers] ([NormalizedEmail])
    WHERE [NormalizedEmail] IS NOT NULL;
GO
-- ================================================================================================
-- VIEWS
-- ================================================================================================
GO
CREATE VIEW [dbo].[vwInstitutionSummary] AS
SELECT
    i.InstitutionID,
    i.InstitutionName,
    i.InstitutionType,
    i.InstitutionClassification,
    i.Location,
    i.District,
    COUNT(DISTINCT cp.ContactPersonID)  AS TotalContacts,
    COUNT(DISTINCT ii.DeviceID)      AS TotalInstruments,
    SUM(ii.NumberOfMachines)            AS TotalMachines,
    COUNT(DISTINCT v.VisitID)           AS TotalVisits,
    MAX(v.VisitDate)                    AS LastVisitDate,
    i.IsActive
FROM dbo.Institutions i
LEFT JOIN dbo.ContactPersons cp ON i.InstitutionID = cp.InstitutionID
LEFT JOIN dbo.InstitutionDevices ii ON i.InstitutionID = ii.InstitutionID
LEFT JOIN dbo.Visits v ON i.InstitutionID = v.InstitutionID
GROUP BY
    i.InstitutionID, i.InstitutionName, i.InstitutionType,
    i.InstitutionClassification, i.Location, i.District, i.IsActive;
GO

CREATE VIEW [dbo].[vwInstrumentInventory] AS
SELECT
    eq.DeviceID,
    eq.DeviceName,
    eq.ManufacturerCompany,
    eq.BrandName,
    eq.ModelNumber,
    eq.Department,
    COUNT(DISTINCT ii.InstitutionID)                                                    AS InstalledInInstitutions,
    SUM(ii.NumberOfMachines)                                                            AS TotalUnitsInstalled,
    SUM(CASE WHEN ii.IsBCOCSupplied = 1 THEN ii.NumberOfMachines ELSE 0 END)            AS BCOCSuppliedUnits
FROM dbo.Devices eq
LEFT JOIN dbo.InstitutionDevices ii ON eq.DeviceID = ii.DeviceID
WHERE eq.IsActive = 1
GROUP BY
    eq.DeviceID, eq.DeviceName, eq.ManufacturerCompany,
    eq.BrandName, eq.ModelNumber, eq.Department;
GO


-- ================================================================================================
-- VIEW: vwUsersWithRoles
-- Joins Users with their assigned Roles for easy reporting and audit.
-- Usage: SELECT * FROM dbo.vwUsersWithRoles WHERE RoleName = 'Admin'
-- ================================================================================================
GO
CREATE VIEW [dbo].[vwUsersWithRoles] AS
SELECT
    u.[Id]           AS UserId,
    u.[UserName],
    u.[Email],
    u.[FullName],
    u.[Department],
    u.[EmailConfirmed],
    u.[LockoutEnabled],
    u.[LockoutEnd],
    u.[AccessFailedCount],
    u.[CreatedAt],
    r.[Id]           AS RoleId,
    r.[Name]         AS RoleName
FROM [dbo].[AspNetUsers]      u
LEFT JOIN [dbo].[AspNetUserRoles] ur ON u.[Id] = ur.[UserId]
LEFT JOIN [dbo].[AspNetRoles]      r  ON ur.[RoleId] = r.[Id];
GO

-- ================================================================================================
-- STORED PROCEDURES
-- ================================================================================================

-- Institutions CRUD
CREATE PROCEDURE [dbo].[sp_Institutions_Create]
    @InstitutionName            NVARCHAR(200),
    @InstitutionCategory        NVARCHAR(100),
    @InstitutionType            NVARCHAR(50),
    @BusinessOwnership          NVARCHAR(50),
    @InstitutionClassification  NVARCHAR(20),
    @Location                   NVARCHAR(200),
    @District                   NVARCHAR(100),
    @Division                   NVARCHAR(100),
    @Address                    NVARCHAR(500) = NULL,
    @Website                    NVARCHAR(255) = NULL,
    @InstitutionID              INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO dbo.Institutions (
        InstitutionName, InstitutionCategory, InstitutionType,
        BusinessOwnership, InstitutionClassification, Location,
        District, Division, Address, Website
    ) VALUES (
        @InstitutionName, @InstitutionCategory, @InstitutionType,
        @BusinessOwnership, @InstitutionClassification, @Location,
        @District, @Division, @Address, @Website
    );
    SET @InstitutionID = SCOPE_IDENTITY();
    SELECT @InstitutionID AS InstitutionID, 'Institution created successfully' AS Message;
END
GO

CREATE PROCEDURE [dbo].[sp_Institutions_Read]
    @InstitutionID INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    IF @InstitutionID IS NULL
        SELECT * FROM dbo.vwInstitutionSummary WHERE IsActive = 1 ORDER BY InstitutionName;
    ELSE
        SELECT * FROM dbo.Institutions WHERE InstitutionID = @InstitutionID;
END
GO

CREATE PROCEDURE [dbo].[sp_Institutions_Update]
    @InstitutionID      INT,
    @InstitutionName    NVARCHAR(200) = NULL,
    @Location           NVARCHAR(200) = NULL,
    @District           NVARCHAR(100) = NULL,
    @Website            NVARCHAR(255) = NULL,
    @IsActive           BIT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE dbo.Institutions SET
        InstitutionName = ISNULL(@InstitutionName, InstitutionName),
        Location        = ISNULL(@Location, Location),
        District        = ISNULL(@District, District),
        Website         = ISNULL(@Website, Website),
        IsActive        = ISNULL(@IsActive, IsActive),
        ModifiedDate    = GETDATE()
    WHERE InstitutionID = @InstitutionID;
    SELECT 'Institution updated successfully' AS Message;
END
GO

CREATE PROCEDURE [dbo].[sp_Institutions_Delete]
    @InstitutionID INT,
    @HardDelete    BIT = 0
AS
BEGIN
    SET NOCOUNT ON;
    IF @HardDelete = 1
        DELETE FROM dbo.Institutions WHERE InstitutionID = @InstitutionID;
    ELSE
        UPDATE dbo.Institutions SET IsActive = 0, ModifiedDate = GETDATE()
        WHERE InstitutionID = @InstitutionID;
    SELECT 'Institution deleted successfully' AS Message;
END
GO

-- Employees CRUD
CREATE PROCEDURE [dbo].[sp_Employees_Create]
    @EmployeeCode       NVARCHAR(20),
    @EmployeeName       NVARCHAR(100),
    @Designation        NVARCHAR(100) = NULL,
    @Department         NVARCHAR(100) = NULL,
    @SpecifiedTerritory NVARCHAR(200) = NULL,
    @ContactPhone       NVARCHAR(25),
    @ContactEmail       NVARCHAR(100),
    @JoinDate           DATE = NULL,
    @EmployeeID         INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO dbo.Employees (
        EmployeeCode, EmployeeName, Designation, Department,
        SpecifiedTerritory, ContactPhone, ContactEmail, JoinDate
    ) VALUES (
        @EmployeeCode, @EmployeeName, @Designation, @Department,
        @SpecifiedTerritory, @ContactPhone, @ContactEmail, @JoinDate
    );
    SET @EmployeeID = SCOPE_IDENTITY();
    SELECT @EmployeeID AS EmployeeID, 'Employee created successfully' AS Message;
END
GO

CREATE PROCEDURE [dbo].[sp_Employees_Read]
    @EmployeeID INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    IF @EmployeeID IS NULL
        SELECT * FROM dbo.Employees WHERE IsActive = 1 ORDER BY EmployeeName;
    ELSE
        SELECT * FROM dbo.Employees WHERE EmployeeID = @EmployeeID;
END
GO

CREATE PROCEDURE [dbo].[sp_Employees_Update]
    @EmployeeID     INT,
    @EmployeeName   NVARCHAR(100) = NULL,
    @Designation    NVARCHAR(100) = NULL,
    @ContactPhone   NVARCHAR(25)  = NULL,
    @IsActive       BIT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE dbo.Employees SET
        EmployeeName    = ISNULL(@EmployeeName, EmployeeName),
        Designation     = ISNULL(@Designation, Designation),
        ContactPhone    = ISNULL(@ContactPhone, ContactPhone),
        IsActive        = ISNULL(@IsActive, IsActive),
        ModifiedDate    = GETDATE()
    WHERE EmployeeID = @EmployeeID;
    SELECT 'Employee updated successfully' AS Message;
END
GO

CREATE PROCEDURE [dbo].[sp_Employees_Delete]
    @EmployeeID INT,
    @HardDelete BIT = 0
AS
BEGIN
    SET NOCOUNT ON;
    IF @HardDelete = 1
        DELETE FROM dbo.Employees WHERE EmployeeID = @EmployeeID;
    ELSE
        UPDATE dbo.Employees SET IsActive = 0, ModifiedDate = GETDATE()
        WHERE EmployeeID = @EmployeeID;
    SELECT 'Employee deleted successfully' AS Message;
END
GO

-- Contact Persons CRUD
CREATE PROCEDURE [dbo].[sp_ContactPersons_Create]
    @InstitutionID  INT,
    @ContactName    NVARCHAR(100),
    @ContactType    NVARCHAR(50),
    @ContactPhone   NVARCHAR(25),
    @Designation    NVARCHAR(100) = NULL,
    @Department     NVARCHAR(100) = NULL,
    @ContactEmail   NVARCHAR(100) = NULL,
    @Title          NVARCHAR(10)  = NULL,
    @ContactPersonID INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO dbo.ContactPersons (
        InstitutionID, ContactName, ContactType, ContactPhone,
        Designation, Department, ContactEmail, Title
    ) VALUES (
        @InstitutionID, @ContactName, @ContactType, @ContactPhone,
        @Designation, @Department, @ContactEmail, @Title
    );
    SET @ContactPersonID = SCOPE_IDENTITY();
    SELECT @ContactPersonID AS ContactPersonID, 'Contact person created successfully' AS Message;
END
GO

CREATE PROCEDURE [dbo].[sp_ContactPersons_Read]
    @ContactPersonID INT = NULL,
    @InstitutionID   INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    IF @ContactPersonID IS NOT NULL
        SELECT * FROM dbo.ContactPersons WHERE ContactPersonID = @ContactPersonID;
    ELSE IF @InstitutionID IS NOT NULL
        SELECT * FROM dbo.ContactPersons WHERE InstitutionID = @InstitutionID AND IsActive = 1;
    ELSE
        SELECT * FROM dbo.ContactPersons WHERE IsActive = 1 ORDER BY ContactName;
END
GO

CREATE PROCEDURE [dbo].[sp_ContactPersons_Update]
    @ContactPersonID INT,
    @ContactName     NVARCHAR(100) = NULL,
    @ContactPhone    NVARCHAR(25)  = NULL,
    @ContactEmail    NVARCHAR(100) = NULL,
    @IsActive        BIT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE dbo.ContactPersons SET
        ContactName     = ISNULL(@ContactName, ContactName),
        ContactPhone    = ISNULL(@ContactPhone, ContactPhone),
        ContactEmail    = ISNULL(@ContactEmail, ContactEmail),
        IsActive        = ISNULL(@IsActive, IsActive),
        ModifiedDate    = GETDATE()
    WHERE ContactPersonID = @ContactPersonID;
    SELECT 'Contact person updated successfully' AS Message;
END
GO

CREATE PROCEDURE [dbo].[sp_ContactPersons_Delete]
    @ContactPersonID INT,
    @HardDelete      BIT = 0
AS
BEGIN
    SET NOCOUNT ON;
    IF @HardDelete = 1
        DELETE FROM dbo.ContactPersons WHERE ContactPersonID = @ContactPersonID;
    ELSE
        UPDATE dbo.ContactPersons SET IsActive = 0, ModifiedDate = GETDATE()
        WHERE ContactPersonID = @ContactPersonID;
    SELECT 'Contact person deleted successfully' AS Message;
END
GO

-- Device CRUD
CREATE PROCEDURE [dbo].[sp_Device_Create]
    @DeviceName      NVARCHAR(200),
    @DeviceType      NVARCHAR(50),
    @Department         NVARCHAR(100),
    @SupplierID         INT = NULL,
    @ManufacturerCompany NVARCHAR(200) = NULL,
    @BrandName          NVARCHAR(100) = NULL,
    @ModelNumber        NVARCHAR(100) = NULL,
    @CountryOrigin      NVARCHAR(100) = NULL,
    @DeviceID        INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO dbo.Devices (
        DeviceName, DeviceType, Department, SupplierID,
        ManufacturerCompany, BrandName, ModelNumber, CountryOrigin
    ) VALUES (
        @DeviceName, @DeviceType, @Department, @SupplierID,
        @ManufacturerCompany, @BrandName, @ModelNumber, @CountryOrigin
    );
    SET @DeviceID = SCOPE_IDENTITY();
    SELECT @DeviceID AS DeviceID, 'Device created successfully' AS Message;
END
GO

CREATE PROCEDURE [dbo].[sp_Device_Read]
    @DeviceID INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    IF @DeviceID IS NULL
        SELECT * FROM dbo.Devices WHERE IsActive = 1 ORDER BY DeviceName;
    ELSE
        SELECT * FROM dbo.Devices WHERE DeviceID = @DeviceID;
END
GO

CREATE PROCEDURE [dbo].[sp_Device_Update]
    @DeviceID    INT,
    @DeviceName  NVARCHAR(200) = NULL,
    @BrandName      NVARCHAR(100) = NULL,
    @ModelNumber    NVARCHAR(100) = NULL,
    @IsActive       BIT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE dbo.Devices SET
        DeviceName   = ISNULL(@DeviceName, DeviceName),
        BrandName       = ISNULL(@BrandName, BrandName),
        ModelNumber     = ISNULL(@ModelNumber, ModelNumber),
        IsActive        = ISNULL(@IsActive, IsActive),
        ModifiedDate    = GETDATE()
    WHERE DeviceID = @DeviceID;
    SELECT 'Device updated successfully' AS Message;
END
GO

CREATE PROCEDURE [dbo].[sp_Device_Delete]
    @DeviceID INT,
    @HardDelete  BIT = 0
AS
BEGIN
    SET NOCOUNT ON;
    IF @HardDelete = 1
        DELETE FROM dbo.Devices WHERE DeviceID = @DeviceID;
    ELSE
        UPDATE dbo.Devices SET IsActive = 0, ModifiedDate = GETDATE()
        WHERE DeviceID = @DeviceID;
    SELECT 'Device deleted successfully' AS Message;
END
GO

-- Suppliers CRUD
CREATE PROCEDURE [dbo].[sp_Suppliers_Create]
    @SupplierName           NVARCHAR(200),
    @SupplierCountry        NVARCHAR(100),
    @SupplierLocation       NVARCHAR(200) = NULL,
    @InstrumentCategory     NVARCHAR(100) = NULL,
    @SupplierType           NVARCHAR(50)  = NULL,
    @ContactPhone           NVARCHAR(25)  = NULL,
    @ContactEmail           NVARCHAR(100) = NULL,
    @LocalRepName           NVARCHAR(150) = NULL,
    @LocalRepPhone          NVARCHAR(25)  = NULL,
    @LocalRepEmail          NVARCHAR(100) = NULL,
    @AverageLeadTimeDays    INT = NULL,
    @IsISO13485_Compliant   BIT = 0,
    @SupplierID             INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO dbo.Suppliers (
        SupplierName, SupplierCountry, SupplierLocation, InstrumentCategory,
        SupplierType, ContactPhone, ContactEmail, LocalRepName, LocalRepPhone,
        LocalRepEmail, AverageLeadTimeDays, IsISO13485_Compliant
    ) VALUES (
        @SupplierName, @SupplierCountry, @SupplierLocation, @InstrumentCategory,
        @SupplierType, @ContactPhone, @ContactEmail, @LocalRepName, @LocalRepPhone,
        @LocalRepEmail, @AverageLeadTimeDays, @IsISO13485_Compliant
    );
    SET @SupplierID = SCOPE_IDENTITY();
    SELECT @SupplierID AS SupplierID, 'Supplier created successfully' AS Message;
END
GO

CREATE PROCEDURE [dbo].[sp_Suppliers_Read]
    @SupplierID INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    IF @SupplierID IS NULL
        SELECT * FROM dbo.Suppliers WHERE IsActive = 1 ORDER BY SupplierName;
    ELSE
        SELECT * FROM dbo.Suppliers WHERE SupplierID = @SupplierID;
END
GO

CREATE PROCEDURE [dbo].[sp_Suppliers_Update]
    @SupplierID     INT,
    @SupplierName   NVARCHAR(200) = NULL,
    @SupplierCountry NVARCHAR(100) = NULL,
    @ContactPhone   NVARCHAR(25)  = NULL,
    @ContactEmail   NVARCHAR(100) = NULL,
    @IsActive       BIT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE dbo.Suppliers SET
        SupplierName    = ISNULL(@SupplierName, SupplierName),
        SupplierCountry = ISNULL(@SupplierCountry, SupplierCountry),
        ContactPhone    = ISNULL(@ContactPhone, ContactPhone),
        ContactEmail    = ISNULL(@ContactEmail, ContactEmail),
        IsActive        = ISNULL(@IsActive, IsActive),
        ModifiedDate    = GETDATE()
    WHERE SupplierID = @SupplierID;
    SELECT 'Supplier updated successfully' AS Message;
END
GO

CREATE PROCEDURE [dbo].[sp_Suppliers_Delete]
    @SupplierID INT,
    @HardDelete BIT = 0
AS
BEGIN
    SET NOCOUNT ON;
    IF @HardDelete = 1
        DELETE FROM dbo.Suppliers WHERE SupplierID = @SupplierID;
    ELSE
        UPDATE dbo.Suppliers SET IsActive = 0, ModifiedDate = GETDATE()
        WHERE SupplierID = @SupplierID;
    SELECT 'Supplier deleted successfully' AS Message;
END
GO

-- Visits CRUD
CREATE PROCEDURE [dbo].[sp_Visits_Create]
    @InstitutionID          INT,
    @EmployeeID             INT,
    @VisitDate              DATE,
    @VisitType              NVARCHAR(50),
    @VisitPurpose           NVARCHAR(500) = NULL,
    @VisitMode              NVARCHAR(20)  = 'Onsite',
    @VisitDurationMinutes   INT = NULL,
    @NextFollowUpDate       DATE = NULL,
    @VisitID                INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO dbo.Visits (
        InstitutionID, EmployeeID, VisitDate, VisitType,
        VisitPurpose, VisitMode, VisitDurationMinutes, NextFollowUpDate
    ) VALUES (
        @InstitutionID, @EmployeeID, @VisitDate, @VisitType,
        @VisitPurpose, @VisitMode, @VisitDurationMinutes, @NextFollowUpDate
    );
    SET @VisitID = SCOPE_IDENTITY();
    SELECT @VisitID AS VisitID, 'Visit created successfully' AS Message;
END
GO

CREATE PROCEDURE [dbo].[sp_Visits_Read]
    @VisitID        INT = NULL,
    @InstitutionID  INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    IF @VisitID IS NOT NULL
        SELECT * FROM dbo.Visits WHERE VisitID = @VisitID;
    ELSE IF @InstitutionID IS NOT NULL
        SELECT * FROM dbo.Visits WHERE InstitutionID = @InstitutionID ORDER BY VisitDate DESC;
    ELSE
        SELECT * FROM dbo.Visits ORDER BY VisitDate DESC;
END
GO

CREATE PROCEDURE [dbo].[sp_Visits_Update]
    @VisitID            INT,
    @VisitResults       NVARCHAR(2000) = NULL,
    @NextFollowUpDate   DATE = NULL
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE dbo.Visits SET
        VisitResults        = ISNULL(@VisitResults, VisitResults),
        NextFollowUpDate    = ISNULL(@NextFollowUpDate, NextFollowUpDate),
        ModifiedDate        = GETDATE()
    WHERE VisitID = @VisitID;
    SELECT 'Visit updated successfully' AS Message;
END
GO

CREATE PROCEDURE [dbo].[sp_Visits_Delete]
    @VisitID INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM dbo.Visits WHERE VisitID = @VisitID;
    SELECT 'Visit deleted successfully' AS Message;
END
GO

-- Complaints CRUD
CREATE PROCEDURE [dbo].[sp_Complaints_Create]
    @InstitutionID          INT,
    @ComplaintType          NVARCHAR(50),
    @ComplaintDescription   NVARCHAR(2000),
    @Priority               NVARCHAR(20) = 'Medium',
    @ReceivedByEmployeeID   INT = NULL,
    @ComplaintID            INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @TicketNum NVARCHAR(100) =
        'TKT-' + FORMAT(GETDATE(), 'yyyyMMdd') + '-' +
        CAST(ABS(CHECKSUM(NEWID())) % 10000 AS NVARCHAR(4));
    INSERT INTO dbo.ComplaintRequests (
        InstitutionID, ComplaintType, ComplaintDescription,
        Priority, ReceivedByEmployeeID, TicketNumber
    ) VALUES (
        @InstitutionID, @ComplaintType, @ComplaintDescription,
        @Priority, @ReceivedByEmployeeID, @TicketNum
    );
    SET @ComplaintID = SCOPE_IDENTITY();
    SELECT @ComplaintID AS ComplaintID, @TicketNum AS TicketNumber, 'Complaint created successfully' AS Message;
END
GO

CREATE PROCEDURE [dbo].[sp_Complaints_Read]
    @ComplaintID INT = NULL,
    @Status      NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    IF @ComplaintID IS NOT NULL
        SELECT * FROM dbo.ComplaintRequests WHERE ComplaintID = @ComplaintID;
    ELSE IF @Status IS NOT NULL
        SELECT * FROM dbo.ComplaintRequests WHERE Status = @Status ORDER BY ComplaintDate DESC;
    ELSE
        SELECT * FROM dbo.ComplaintRequests ORDER BY ComplaintDate DESC;
END
GO

CREATE PROCEDURE [dbo].[sp_Complaints_Update]
    @ComplaintID            INT,
    @Status                 NVARCHAR(50)   = NULL,
    @AssignedToEmployeeID   INT = NULL,
    @ResolutionNotes        NVARCHAR(2000) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE dbo.ComplaintRequests SET
        Status                  = ISNULL(@Status, Status),
        AssignedToEmployeeID    = ISNULL(@AssignedToEmployeeID, AssignedToEmployeeID),
        ResolutionNotes         = ISNULL(@ResolutionNotes, ResolutionNotes),
        ResolvedDate            = CASE WHEN @Status IN ('Resolved','Closed') THEN GETDATE() ELSE ResolvedDate END,
        ModifiedDate            = GETDATE()
    WHERE ComplaintID = @ComplaintID;
    SELECT 'Complaint updated successfully' AS Message;
END
GO

CREATE PROCEDURE [dbo].[sp_Complaints_Delete]
    @ComplaintID INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM dbo.ComplaintRequests WHERE ComplaintID = @ComplaintID;
    SELECT 'Complaint deleted successfully' AS Message;
END
GO

-- Maintenance CRUD
CREATE PROCEDURE [dbo].[sp_Maintenance_Create]
    @InstitutionDeviceID    INT,
    @MaintenanceDate            DATE,
    @MaintenanceType            NVARCHAR(50),
    @PerformedByEmployeeID      INT = NULL,
    @IssuesFound                NVARCHAR(2000) = NULL,
    @SolutionProvided           NVARCHAR(2000) = NULL,
    @MaintenanceResult          NVARCHAR(50) = 'Success',
    @ServiceCost                DECIMAL(10,2) = 0,
    @MaintenanceID              INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO dbo.MaintenanceRecords (
        InstitutionDeviceID, MaintenanceDate, MaintenanceType,
        PerformedByEmployeeID, IssuesFound, SolutionProvided,
        MaintenanceResult, ServiceCost
    ) VALUES (
        @InstitutionDeviceID, @MaintenanceDate, @MaintenanceType,
        @PerformedByEmployeeID, @IssuesFound, @SolutionProvided,
        @MaintenanceResult, @ServiceCost
    );
    SET @MaintenanceID = SCOPE_IDENTITY();
    SELECT @MaintenanceID AS MaintenanceID, 'Maintenance record created successfully' AS Message;
END
GO

CREATE PROCEDURE [dbo].[sp_Maintenance_Read]
    @MaintenanceID              INT = NULL,
    @InstitutionDeviceID    INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    IF @MaintenanceID IS NOT NULL
        SELECT * FROM dbo.MaintenanceRecords WHERE MaintenanceID = @MaintenanceID;
    ELSE IF @InstitutionDeviceID IS NOT NULL
        SELECT * FROM dbo.MaintenanceRecords WHERE InstitutionDeviceID = @InstitutionDeviceID ORDER BY MaintenanceDate DESC;
    ELSE
        SELECT * FROM dbo.MaintenanceRecords ORDER BY MaintenanceDate DESC;
END
GO

CREATE PROCEDURE [dbo].[sp_Maintenance_Update]
    @MaintenanceID      INT,
    @MaintenanceResult  NVARCHAR(50)  = NULL,
    @ServiceCost        DECIMAL(10,2) = NULL,
    @NextScheduledDate  DATE = NULL
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE dbo.MaintenanceRecords SET
        MaintenanceResult   = ISNULL(@MaintenanceResult, MaintenanceResult),
        ServiceCost         = ISNULL(@ServiceCost, ServiceCost),
        NextScheduledDate   = ISNULL(@NextScheduledDate, NextScheduledDate),
        ModifiedDate        = GETDATE()
    WHERE MaintenanceID = @MaintenanceID;
    SELECT 'Maintenance record updated successfully' AS Message;
END
GO

CREATE PROCEDURE [dbo].[sp_Maintenance_Delete]
    @MaintenanceID INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM dbo.MaintenanceRecords WHERE MaintenanceID = @MaintenanceID;
    SELECT 'Maintenance record deleted successfully' AS Message;
END
GO

-- Report / Search Stored Procedures
CREATE PROCEDURE [dbo].[spVisits_GetByEmployee]
    @EmployeeID INT,
    @StartDate  DATE = NULL,
    @EndDate    DATE = NULL
AS
BEGIN
    SET NOCOUNT ON;
    IF @StartDate IS NULL SET @StartDate = DATEADD(MONTH, -1, GETDATE());
    IF @EndDate   IS NULL SET @EndDate   = GETDATE();
    SELECT v.*, i.InstitutionName, i.Location, cp.ContactName AS MetWith
    FROM dbo.Visits v
    LEFT JOIN dbo.Institutions i ON v.InstitutionID = i.InstitutionID
    LEFT JOIN dbo.ContactPersons cp ON v.ContactPersonID = cp.ContactPersonID
    WHERE v.EmployeeID = @EmployeeID
      AND v.VisitDate BETWEEN @StartDate AND @EndDate
    ORDER BY v.VisitDate DESC;
END
GO

CREATE PROCEDURE [dbo].[spSearch_Institutions_ByLocationOrType]
    @Location           NVARCHAR(200) = NULL,
    @InstitutionType    NVARCHAR(50)  = NULL
AS
BEGIN
    SET NOCOUNT ON;
    SELECT InstitutionID, InstitutionName, InstitutionCategory, InstitutionType,
           BusinessOwnership, InstitutionClassification, Location, District, Division, Website, IsActive
    FROM dbo.Institutions
    WHERE (@Location        IS NULL OR Location        LIKE '%' + @Location + '%')
      AND (@InstitutionType IS NULL OR InstitutionType = @InstitutionType)
    ORDER BY InstitutionName;
END
GO

CREATE PROCEDURE [dbo].[spMaintenance_Report_History]
    @InstitutionID  INT  = NULL,
    @DeviceID    INT  = NULL,
    @StartDate      DATE = NULL,
    @EndDate        DATE = NULL
AS
BEGIN
    SET NOCOUNT ON;
    IF @StartDate IS NULL SET @StartDate = '19000101';
    IF @EndDate   IS NULL SET @EndDate   = GETDATE();
    SELECT
        mr.MaintenanceID, mr.MaintenanceDate, mr.MaintenanceType,
        ii.InstitutionDeviceID, ii.InstitutionID, ii.DeviceID,
        eq.DeviceName, i.InstitutionName,
        mr.PerformedByEmployeeID, mr.IssuesFound, mr.SolutionProvided,
        mr.PartsReplaced, mr.LaborHours, mr.ServiceCost, mr.MaintenanceResult
    FROM dbo.MaintenanceRecords mr
    LEFT JOIN dbo.InstitutionDevices ii ON mr.InstitutionDeviceID = ii.InstitutionDeviceID
    LEFT JOIN dbo.Devices eq ON ii.DeviceID = eq.DeviceID
    LEFT JOIN dbo.Institutions i ON ii.InstitutionID = i.InstitutionID
    WHERE (@InstitutionID IS NULL OR ii.InstitutionID = @InstitutionID)
      AND (@DeviceID   IS NULL OR ii.DeviceID   = @DeviceID)
      AND mr.MaintenanceDate BETWEEN @StartDate AND @EndDate
    ORDER BY mr.MaintenanceDate DESC;
END
GO

CREATE PROCEDURE [dbo].[spDevice_Utilization_Summary]
    @DeviceID INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        eq.DeviceID, eq.DeviceName,
        COUNT(DISTINCT ii.InstitutionID) AS InstalledInInstitutions,
        SUM(ii.NumberOfMachines)         AS TotalUnitsInstalled,
        COUNT(mr.MaintenanceID)          AS TotalMaintenanceEvents,
        MAX(mr.MaintenanceDate)          AS LastMaintenanceDate
    FROM dbo.Devices eq
    LEFT JOIN dbo.InstitutionDevices ii ON eq.DeviceID = ii.DeviceID
    LEFT JOIN dbo.MaintenanceRecords mr ON ii.InstitutionDeviceID = mr.InstitutionDeviceID
    WHERE (@DeviceID IS NULL OR eq.DeviceID = @DeviceID)
    GROUP BY eq.DeviceID, eq.DeviceName
    ORDER BY TotalUnitsInstalled DESC;
END
GO

CREATE PROCEDURE [dbo].[spComplaints_Report_ByStatus]
    @StartDate DATE = NULL,
    @EndDate   DATE = NULL
AS
BEGIN
    SET NOCOUNT ON;
    IF @StartDate IS NULL SET @StartDate = '19000101';
    IF @EndDate   IS NULL SET @EndDate   = GETDATE();
    SELECT
        cr.Status,
        COUNT(*) AS TotalComplaints,
        SUM(CASE WHEN cr.Status IN ('Open','In Progress') THEN 1 ELSE 0 END) AS ActiveComplaints,
        AVG(DATEDIFF(HOUR, cr.ComplaintDate, ISNULL(cr.ResolvedDate, GETDATE()))) AS AvgResolutionHours
    FROM dbo.ComplaintRequests cr
    WHERE cr.ComplaintDate BETWEEN @StartDate AND @EndDate
    GROUP BY cr.Status
    ORDER BY TotalComplaints DESC;
END
GO

CREATE PROCEDURE [dbo].[spComplaint_Maintenance_LinkReport]
    @StartDate DATE = NULL,
    @EndDate   DATE = NULL
AS
BEGIN
    SET NOCOUNT ON;
    IF @StartDate IS NULL SET @StartDate = '19000101';
    IF @EndDate   IS NULL SET @EndDate   = GETDATE();
    SELECT
        cr.ComplaintID, cr.ComplaintDate, cr.ComplaintType,
        cr.Status AS ComplaintStatus, cr.InstitutionID, i.InstitutionName,
        mr.MaintenanceID, mr.MaintenanceDate, mr.MaintenanceResult,
        mr.PerformedByEmployeeID
    FROM dbo.ComplaintRequests cr
    LEFT JOIN dbo.Institutions i ON cr.InstitutionID = i.InstitutionID
    LEFT JOIN dbo.MaintenanceRecords mr ON cr.ComplaintID = mr.ComplaintID
    WHERE cr.ComplaintDate BETWEEN @StartDate AND @EndDate
    ORDER BY cr.ComplaintDate DESC;
END
GO

-- ================================================================================================
-- AUTH MANAGEMENT STORED PROCEDURES
-- These handle Role and User administration safely from application or DBA context.
-- ================================================================================================

-- ── sp_Roles_List ─────────────────────────────────────────────────────────────
CREATE PROCEDURE [dbo].[sp_Roles_List]
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        r.[Id],
        r.[Name]              AS RoleName,
        r.[NormalizedName],
        COUNT(ur.[UserId])    AS UserCount
    FROM [dbo].[AspNetRoles] r
    LEFT JOIN [dbo].[AspNetUserRoles] ur ON r.[Id] = ur.[RoleId]
    GROUP BY r.[Id], r.[Name], r.[NormalizedName]
    ORDER BY r.[Name];
END
GO

-- ── sp_Roles_Create ───────────────────────────────────────────────────────────
-- Creates a new application role. RoleId is generated as NEWID().
CREATE PROCEDURE [dbo].[sp_Roles_Create]
    @RoleName   NVARCHAR(256),
    @RoleId     NVARCHAR(450) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (SELECT 1 FROM [dbo].[AspNetRoles]
               WHERE [NormalizedName] = UPPER(@RoleName))
    BEGIN
        SELECT 'ERROR: Role already exists.' AS Message;
        RETURN;
    END

    SET @RoleId = CAST(NEWID() AS NVARCHAR(450));

    INSERT INTO [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp])
    VALUES (@RoleId, @RoleName, UPPER(@RoleName), CAST(NEWID() AS NVARCHAR(MAX)));

    SELECT @RoleId AS RoleId, 'Role created successfully.' AS Message;
END
GO

-- ── sp_Roles_Rename ───────────────────────────────────────────────────────────
CREATE PROCEDURE [dbo].[sp_Roles_Rename]
    @CurrentRoleName    NVARCHAR(256),
    @NewRoleName        NVARCHAR(256)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [dbo].[AspNetRoles]
    SET    [Name]             = @NewRoleName,
           [NormalizedName]   = UPPER(@NewRoleName),
           [ConcurrencyStamp] = CAST(NEWID() AS NVARCHAR(MAX))
    WHERE  [NormalizedName] = UPPER(@CurrentRoleName);

    IF @@ROWCOUNT = 0
        SELECT 'ERROR: Role not found.' AS Message;
    ELSE
        SELECT 'Role renamed successfully.' AS Message;
END
GO

-- ── sp_Roles_Delete ───────────────────────────────────────────────────────────
-- Removes all user assignments then deletes the role.
CREATE PROCEDURE [dbo].[sp_Roles_Delete]
    @RoleName   NVARCHAR(256)
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRANSACTION;
    BEGIN TRY
        -- Remove all user–role mappings for this role
        DELETE ur
        FROM   [dbo].[AspNetUserRoles] ur
        JOIN   [dbo].[AspNetRoles]     r  ON ur.[RoleId] = r.[Id]
        WHERE  r.[NormalizedName] = UPPER(@RoleName);

        -- Remove any role claims
        DELETE rc
        FROM   [dbo].[AspNetRoleClaims] rc
        JOIN   [dbo].[AspNetRoles]      r  ON rc.[RoleId] = r.[Id]
        WHERE  r.[NormalizedName] = UPPER(@RoleName);

        DELETE FROM [dbo].[AspNetRoles]
        WHERE  [NormalizedName] = UPPER(@RoleName);

        COMMIT TRANSACTION;
        SELECT 'Role and all assignments deleted successfully.' AS Message;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        SELECT ERROR_MESSAGE() AS Message;
    END CATCH
END
GO

-- ── sp_Users_List ─────────────────────────────────────────────────────────────
CREATE PROCEDURE [dbo].[sp_Users_List]
AS
BEGIN
    SET NOCOUNT ON;
    SELECT * FROM [dbo].[vwUsersWithRoles]
    ORDER BY [Email];
END
GO

-- ── sp_Users_AssignRole ───────────────────────────────────────────────────────
-- Safely assigns a role to a user; idempotent (no error if already assigned).
CREATE PROCEDURE [dbo].[sp_Users_AssignRole]
    @Email      NVARCHAR(256),
    @RoleName   NVARCHAR(256)
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @UserId NVARCHAR(450);
    DECLARE @RoleId NVARCHAR(450);

    SELECT @UserId = [Id] FROM [dbo].[AspNetUsers]
    WHERE  [NormalizedEmail] = UPPER(@Email);

    SELECT @RoleId = [Id] FROM [dbo].[AspNetRoles]
    WHERE  [NormalizedName] = UPPER(@RoleName);

    IF @UserId IS NULL
    BEGIN SELECT 'ERROR: User not found.'   AS Message; RETURN; END
    IF @RoleId IS NULL
    BEGIN SELECT 'ERROR: Role not found.'   AS Message; RETURN; END

    IF NOT EXISTS (SELECT 1 FROM [dbo].[AspNetUserRoles]
                   WHERE [UserId] = @UserId AND [RoleId] = @RoleId)
    BEGIN
        INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId])
        VALUES (@UserId, @RoleId);
        SELECT 'Role assigned successfully.' AS Message;
    END
    ELSE
        SELECT 'User already has this role (no change).' AS Message;
END
GO

-- ── sp_Users_RemoveRole ───────────────────────────────────────────────────────
CREATE PROCEDURE [dbo].[sp_Users_RemoveRole]
    @Email      NVARCHAR(256),
    @RoleName   NVARCHAR(256)
AS
BEGIN
    SET NOCOUNT ON;
    DELETE ur
    FROM   [dbo].[AspNetUserRoles] ur
    JOIN   [dbo].[AspNetUsers] u ON ur.[UserId] = u.[Id]
    JOIN   [dbo].[AspNetRoles] r ON ur.[RoleId] = r.[Id]
    WHERE  u.[NormalizedEmail] = UPPER(@Email)
      AND  r.[NormalizedName]  = UPPER(@RoleName);

    IF @@ROWCOUNT = 0
        SELECT 'No matching user-role assignment found.' AS Message;
    ELSE
        SELECT 'Role removed from user successfully.' AS Message;
END
GO

-- ── sp_Users_LockUnlock ───────────────────────────────────────────────────────
-- Locks a user account until a given date, or unlocks it (NULL = unlocked).
CREATE PROCEDURE [dbo].[sp_Users_LockUnlock]
    @Email      NVARCHAR(256),
    @LockUntil  DATETIMEOFFSET = NULL  -- NULL = unlock
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [dbo].[AspNetUsers]
    SET    [LockoutEnd]        = @LockUntil,
           [LockoutEnabled]    = CASE WHEN @LockUntil IS NULL THEN 1 ELSE 1 END,
           [AccessFailedCount] = CASE WHEN @LockUntil IS NULL THEN 0 ELSE [AccessFailedCount] END,
           [ConcurrencyStamp]  = CAST(NEWID() AS NVARCHAR(MAX))
    WHERE  [NormalizedEmail] = UPPER(@Email);

    IF @@ROWCOUNT = 0
        SELECT 'ERROR: User not found.' AS Message;
    ELSE IF @LockUntil IS NULL
        SELECT 'User account unlocked successfully.' AS Message;
    ELSE
        SELECT 'User account locked until ' + CAST(@LockUntil AS NVARCHAR(50)) AS Message;
END
GO

-- ── sp_RoleClaims_Add ─────────────────────────────────────────────────────────
-- Adds a fine-grained permission claim to a role.
-- Example: EXEC sp_RoleClaims_Add 'Manager', 'Permission', 'CanExportReports'
CREATE PROCEDURE [dbo].[sp_RoleClaims_Add]
    @RoleName    NVARCHAR(256),
    @ClaimType   NVARCHAR(MAX),
    @ClaimValue  NVARCHAR(MAX)
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @RoleId NVARCHAR(450);
    SELECT @RoleId = [Id] FROM [dbo].[AspNetRoles]
    WHERE  [NormalizedName] = UPPER(@RoleName);

    IF @RoleId IS NULL
    BEGIN SELECT 'ERROR: Role not found.' AS Message; RETURN; END

    IF NOT EXISTS (SELECT 1 FROM [dbo].[AspNetRoleClaims]
                   WHERE [RoleId] = @RoleId
                     AND [ClaimType]  = @ClaimType
                     AND [ClaimValue] = @ClaimValue)
    BEGIN
        INSERT INTO [dbo].[AspNetRoleClaims] ([RoleId], [ClaimType], [ClaimValue])
        VALUES (@RoleId, @ClaimType, @ClaimValue);
        SELECT 'Role claim added successfully.' AS Message;
    END
    ELSE
        SELECT 'Claim already exists on this role (no change).' AS Message;
END
GO

-- ── sp_Auth_Audit_UsersWithRoles ──────────────────────────────────────────────
-- Audit report: all users, their roles, and last lockout info.
CREATE PROCEDURE [dbo].[sp_Auth_Audit_UsersWithRoles]
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        u.[Email],
        u.[FullName],
        u.[Department],
        u.[EmailConfirmed],
        u.[LockoutEnabled],
        u.[LockoutEnd],
        u.[AccessFailedCount],
        u.[CreatedAt],
        STRING_AGG(r.[Name], ', ') AS AssignedRoles
    FROM [dbo].[AspNetUsers] u
    LEFT JOIN [dbo].[AspNetUserRoles] ur ON u.[Id] = ur.[UserId]
    LEFT JOIN [dbo].[AspNetRoles]     r  ON ur.[RoleId] = r.[Id]
    GROUP BY
        u.[Email], u.[FullName], u.[Department],
        u.[EmailConfirmed], u.[LockoutEnabled],
        u.[LockoutEnd], u.[AccessFailedCount], u.[CreatedAt]
    ORDER BY u.[Email];
END
GO
