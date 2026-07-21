USE [Medical_Devices_KYC_Database];
GO

-- ================================================================================================
-- INSERT: Suppliers
-- ================================================================================================
SET IDENTITY_INSERT [dbo].[Suppliers] ON;

INSERT INTO [dbo].[Suppliers]
    ([SupplierID], [SupplierName], [SupplierCountry], [SupplierLocation], [InstrumentCategory], [SupplierType],
     [ContactPhone], [ContactEmail], [LocalRepName], [LocalRepPhone], [LocalRepEmail],
     [AverageLeadTimeDays], [IsISO13485_Compliant], [IsActive], [rowguid], [CreatedDate], [ModifiedDate])
VALUES
    (1000, N'Roche Diagnostics',            N'Switzerland', N'Basel',         N'Diagnostic Equipment', N'Manufacturer', N'+41-61-688-9999',   N'info@roche.com',            N'Roche BD',    N'+880-1710-000001', N'bd@roche.com',    90,  1, 1, N'19e39c6c-8a0f-44f8-9112-7dc5bc08f658', '2025-11-03', '2025-11-03'),
    (1001, N'Siemens Healthineers',         N'Germany',     N'Erlangen',      N'Diagnostic Equipment', N'Manufacturer', N'+49-9131-84-0',     N'info@siemens-health.com',   N'Siemens BD',  N'+880-1710-000002', N'bd@siemens.com',  120, 1, 1, N'a6f95690-ff73-481f-9351-8b8e032a15da', '2025-11-03', '2025-11-03'),
    (1002, N'Abbott Laboratories',          N'USA',         N'Illinois',      N'Diagnostic Equipment', N'Manufacturer', N'+1-224-667-6100',   N'info@abbott.com',           N'Abbott BD',   N'+880-1710-000003', N'bd@abbott.com',   100, 1, 1, N'3f40f8c9-3a4e-44de-911f-b6be3b431b7d', '2025-11-03', '2025-11-03'),
    (1003, N'Beckman Coulter',              N'USA',         N'California',    N'Lab Equipment',        N'Manufacturer', N'+1-714-993-5321',   N'info@beckman.com',          N'Beckman BD',  N'+880-1710-000004', N'bd@beckman.com',  110, 1, 1, N'6605887e-0495-412d-a6a3-29b43c6d70c5', '2025-11-03', '2025-11-03'),
    (1004, N'Sysmex Corporation',           N'Japan',       N'Kobe',          N'Hematology Equipment', N'Manufacturer', N'+81-78-265-0500',   N'info@sysmex.com',           N'Sysmex BD',   N'+880-1710-000005', N'bd@sysmex.com',   95,  1, 1, N'053fe4b1-9ad2-4226-a07f-946e49d64eef', '2025-11-03', '2025-11-03'),
    (1005, N'Thermo Fisher Scientific',     N'USA',         N'Massachusetts', N'Lab Equipment',        N'Manufacturer', N'+1-781-622-1000',   N'info@thermofisher.com',     N'Thermo BD',   N'+880-1710-000006', N'bd@thermo.com',   105, 1, 1, N'942a8cab-65f3-49a9-9af9-6fafa2a82599', '2025-11-03', '2025-11-03'),
    (1006, N'Bio-Rad Laboratories',         N'USA',         N'California',    N'Lab Equipment',        N'Manufacturer', N'+1-510-724-7000',   N'info@bio-rad.com',          N'BioRad BD',   N'+880-1710-000007', N'bd@biorad.com',   115, 1, 1, N'642f973a-7e46-4d6c-995c-8afc114f53f2', '2025-11-03', '2025-11-03'),
    (1007, N'Danaher Corporation',          N'USA',         N'Washington',    N'Medical Devices',      N'Manufacturer', N'+1-202-828-0850',   N'info@danaher.com',          N'Danaher BD',  N'+880-1710-000008', N'bd@danaher.com',  100, 1, 1, N'29ca5394-a4f7-428a-bc93-f52ca6f3d3b9', '2025-11-03', '2025-11-03'),
    (1008, N'Mindray Medical',              N'China',       N'Shenzhen',      N'Medical Equipment',    N'Manufacturer', N'+86-755-8188-8998', N'info@mindray.com',          N'Mindray BD',  N'+880-1710-000009', N'bd@mindray.com',  60,  1, 1, N'c11c117e-e00e-45c8-ba91-0f0a01d77808', '2025-11-03', '2025-11-03'),
    (1009, N'Hitachi High-Tech',            N'Japan',       N'Tokyo',         N'Lab Equipment',        N'Manufacturer', N'+81-3-3504-5818',   N'info@hitachi-hightech.com', N'Hitachi BD',  N'+880-1710-000010', N'bd@hitachi.com',  120, 1, 1, N'29b74be5-0b7b-4505-80e6-fc0a165532bc', '2025-11-03', '2025-11-03'),
    (1010, N'Ortho Clinical Diagnostics',   N'USA',         N'New Jersey',    N'Diagnostic Equipment', N'Manufacturer', N'+1-908-218-9900',   N'info@orthoclinical.com',    N'Ortho BD',    N'+880-1710-000011', N'bd@ortho.com',    110, 1, 1, N'55cfbfa4-c3d2-49f6-8f9b-9ee1e70795af', '2025-11-03', '2025-11-03'),
    (1011, N'Horiba Medical',               N'France',      N'Montpellier',   N'Hematology Equipment', N'Manufacturer', N'+33-4-67-14-15-16', N'info@horiba.com',           N'Horiba BD',   N'+880-1710-000012', N'bd@horiba.com',   100, 1, 1, N'cfe9db74-e8e5-4e0b-b55d-800047e2f3d4', '2025-11-03', '2025-11-03'),
    (1012, N'ELITechGroup',                 N'France',      N'Paris',         N'Clinical Diagnostics', N'Manufacturer', N'+33-1-30-68-70-00', N'info@elitechgroup.com',     N'Elitech BD',  N'+880-1710-000013', N'bd@elitech.com',  95,  1, 1, N'df09b30e-7c97-4263-b1de-c881c62676cf', '2025-11-03', '2025-11-03'),
    (1013, N'DiaSorin',                     N'Italy',       N'Saluggia',      N'Immunodiagnostics',    N'Manufacturer', N'+39-0161-487-525',  N'info@diasorin.com',         N'DiaSorin BD', N'+880-1710-000014', N'bd@diasorin.com', 105, 1, 1, N'7f799179-d287-4c10-8b88-e44b32e34aca', '2025-11-03', '2025-11-03'),
    (1014, N'Werfen Group',                 N'Spain',       N'Barcelona',     N'Hemostasis Equipment', N'Manufacturer', N'+34-93-230-53-00',  N'info@werfen.com',           N'Werfen BD',   N'+880-1710-000015', N'bd@werfen.com',   115, 1, 1, N'b8cbd318-8059-427c-a6ad-bba676d0a23b', '2025-11-03', '2025-11-03'),
    (1015, N'Test Medical Supplies Ltd.',   N'Bangladesh',  N'Dhaka',         N'Consumables',          N'Distributor',  N'+880-1700-000000',  N'test@testmedical.com',      N'Test Rep',    N'+880-1700-111111', N'rep@testmedical.com', 45, 0, 1, N'f441265e-22b4-42ad-a0d7-290bcd0e50bc', '2025-11-03', '2025-11-03'),
    (1016, N'Becton Dickinson',             N'USA',         N'New Jersey',    N'Medical Devices',      N'Manufacturer', N'+1-201-847-6800',   N'info@bd.com',               N'BD BD',       N'+880-1710-000016', N'bd@bd.com',       80,  1, 1, N'a1b2c3d4-e5f6-7890-ab11-cd1234567890', '2025-11-03', '2025-11-03'),
    (1017, N'PerkinElmer',                  N'USA',         N'Massachusetts', N'Diagnostic Equipment', N'Manufacturer', N'+1-781-663-6900',   N'info@perkinelmer.com',      N'Perkin BD',   N'+880-1710-000017', N'bd@perkin.com',   95,  1, 1, N'b2c3d4e5-f6a7-8901-bc22-de2345678901', '2025-11-03', '2025-11-03'),
    (1018, N'Fujifilm Healthcare',          N'Japan',       N'Tokyo',         N'Diagnostic Equipment', N'Manufacturer', N'+81-3-6271-1111',   N'info@fujifilm.com',         N'Fuji BD',     N'+880-1710-000018', N'bd@fuji.com',     110, 1, 1, N'c3d4e5f6-a7b8-9012-cd33-ef3456789012', '2025-11-03', '2025-11-03');

SET IDENTITY_INSERT [dbo].[Suppliers] OFF;
GO

-- ================================================================================================
-- INSERT: Employees
-- ================================================================================================
SET IDENTITY_INSERT [dbo].[Employees] ON;

INSERT INTO [dbo].[Employees]
    ([EmployeeID], [EmployeeCode], [EmployeeName], [EmployeeNickName], [Designation], [Department],
     [SpecifiedTerritory], [EmployeeType], [ContactPhone], [ContactWhatsApp], [ContactEmail],
     [IsActive], [rowguid], [JoinDate], [CreatedDate], [ModifiedDate])
VALUES
    (1,  N'EMP001', N'Md. Kamal Hossain',   N'Kamal',   N'Senior Sales Executive',       N'Sales',           N'Dhaka City',          N'Sales',          N'+880-1712-345678', N'+880-1712-345678', N'kamal@company.com',    1, N'bf43189d-3379-4785-b0b4-c9571c9deea1', '2020-01-15', '2025-11-03', '2025-11-03'),
    (2,  N'EMP002', N'Fatema Begum',         N'Fatema',  N'Technical Support Engineer',    N'Technical',       N'Dhaka Division',      N'Field Engineer', N'+880-1813-456789', N'+880-1813-456789', N'fatema@company.com',   1, N'02d2b570-4fca-4092-9219-d4a6173c8a8c', '2020-03-20', '2025-11-03', '2025-11-03'),
    (3,  N'EMP003', N'Md. Rahim Uddin',      N'Rahim',   N'Sales Manager',                 N'Sales',           N'Chittagong Division', N'Sales',          N'+880-1715-567890', N'+880-1715-567890', N'rahim@company.com',    1, N'84e026e4-513c-49f1-a191-29e46f68dc3e', '2019-06-10', '2025-11-03', '2025-11-03'),
    (4,  N'EMP004', N'Ayesha Siddiqua',      N'Ayesha',  N'Product Specialist',            N'Marketing',       N'Nationwide',          N'Marketing',      N'+880-1816-678901', N'+880-1816-678901', N'ayesha@company.com',   1, N'42508726-f9c0-46d3-a0f0-59663c56c8f6', '2021-02-14', '2025-11-03', '2025-11-03'),
    (5,  N'EMP005', N'Md. Jahangir Alam',    N'Jahangir',N'Service Engineer',              N'Technical',       N'Rajshahi Division',   N'Field Engineer', N'+880-1717-789012', N'+880-1717-789012', N'jahangir@company.com', 1, N'6a0309a9-38cc-4f3f-89f0-b8690a7863e5', '2020-08-25', '2025-11-03', '2025-11-03'),
    (6,  N'EMP006', N'Nasrin Akter',         N'Nasrin',  N'Sales Executive',               N'Sales',           N'Sylhet Division',     N'Sales',          N'+880-1818-890123', N'+880-1818-890123', N'nasrin@company.com',   1, N'7ba64ead-76b2-43b1-9c99-a277567f7b9f', '2021-05-30', '2025-11-03', '2025-11-03'),
    (7,  N'EMP007', N'Md. Habibur Rahman',   N'Habib',   N'Regional Manager',              N'Sales',           N'Southern Region',     N'Sales',          N'+880-1719-901234', N'+880-1719-901234', N'habib@company.com',    1, N'7f2a08df-75eb-4585-8ca6-225431eb0b8c', '2018-09-15', '2025-11-03', '2025-11-03'),
    (8,  N'EMP008', N'Sharmin Sultana',      N'Sharmin', N'Customer Support Officer',      N'Customer Service',N'Dhaka City',          N'Admin',          N'+880-1820-012345', N'+880-1820-012345', N'sharmin@company.com',  1, N'ef5e600f-1f8e-427d-a5de-e9a3c5be1849', '2021-11-20', '2025-11-03', '2025-11-03'),
    (9,  N'EMP009', N'Md. Shafiqul Islam',   N'Shafiq',  N'Biomedical Engineer',           N'Technical',       N'Dhaka Division',      N'Field Engineer', N'+880-1721-123456', N'+880-1721-123456', N'shafiq@company.com',   1, N'f527d940-44d6-4bdc-9a9c-c60dc9533add', '2020-04-18', '2025-11-03', '2025-11-03'),
    (10, N'EMP010', N'Rupa Khatun',          N'Rupa',    N'Sales Executive',               N'Sales',           N'Khulna Division',     N'Sales',          N'+880-1822-234567', N'+880-1822-234567', N'rupa@company.com',     1, N'041ef55f-2903-439b-8283-a2c0f429e458', '2021-07-22', '2025-11-03', '2025-11-03'),
    (11, N'EMP011', N'Md. Monirul Islam',    N'Monir',   N'Service Manager',               N'Technical',       N'Nationwide',          N'Field Engineer', N'+880-1723-345678', N'+880-1723-345678', N'monir@company.com',    1, N'361edb22-2382-4478-93f2-78498a3c3326', '2019-12-05', '2025-11-03', '2025-11-03'),
    (12, N'EMP012', N'Taslima Akhter',       N'Tasli',   N'Marketing Executive',           N'Marketing',       N'Dhaka City',          N'Marketing',      N'+880-1824-456789', N'+880-1824-456789', N'taslima@company.com',  1, N'17c0e013-6fb3-451c-9b47-da88782593cf', '2021-03-16', '2025-11-03', '2025-11-03'),
    (13, N'EMP013', N'Md. Rafiqul Hasan',    N'Rafiq',   N'Sales Executive',               N'Sales',           N'Mymensingh Division', N'Sales',          N'+880-1725-567890', N'+880-1725-567890', N'rafiq@company.com',    1, N'2b68a6b7-f667-4dbb-8775-e0beab99ad1c', '2020-10-12', '2025-11-03', '2025-11-03'),
    (14, N'EMP014', N'Sultana Razia',        N'Razia',   N'Technical Trainer',             N'Training',        N'Nationwide',          N'Field Engineer', N'+880-1826-678901', N'+880-1826-678901', N'razia@company.com',    1, N'3cc10ae8-98d5-49a0-9bd4-e485f4238fef', '2021-01-08', '2025-11-03', '2025-11-03'),
    (15, N'EMP015', N'Md. Abul Kalam',       N'Abul',    N'Business Development Manager',  N'Sales',           N'Nationwide',          N'Sales',          N'+880-1727-789012', N'+880-1727-789012', N'abul@company.com',     0, N'5b26090e-4443-4ddb-a7b6-aeec734632a3', '2019-05-20', '2025-11-03', '2025-11-03'),
    (16, N'EMP999', N'Test Employee',        N'Testy',   N'Test Engineer',                 N'Testing',         N'Test Territory',      N'Field Engineer', N'+880-1700-999999', N'+880-1700-999999', N'test@company.com',     1, N'49a66973-4dd8-423b-b8f4-ab79c5023082', '2025-01-01', '2025-11-03', '2025-11-03'),
    (17, N'EMP016', N'Sadia Akhter',         N'Sadia',   N'Field Service Engineer',        N'Technical',       N'Barisal Division',    N'Field Engineer', N'+880-1728-890123', N'+880-1728-890123', N'sadia@company.com',    1, N'd4e5f6a7-b8c9-0123-de44-f45678901234', '2022-03-15', '2025-11-03', '2025-11-03'),
    (18, N'EMP017', N'Rafiqul Islam',        N'Rafiq2',  N'Logistics Coordinator',         N'Operations',      N'Dhaka City',          N'Admin',          N'+880-1829-901234', N'+880-1829-901234', N'rafiq.log@company.com',1, N'e5f6a7b8-c9d0-1234-ef55-056789012345', '2022-07-20', '2025-11-03', '2025-11-03'),
    (19, N'EMP018', N'Sharmin Jahan',        N'SharminJ',N'Product Manager',               N'Marketing',       N'Nationwide',          N'Marketing',      N'+880-1730-012345', N'+880-1730-012345', N'sharmin.j@company.com',1, N'f6a7b8c9-d0e1-2345-f066-167890123456', '2021-11-10', '2025-11-03', '2025-11-03');

SET IDENTITY_INSERT [dbo].[Employees] OFF;
GO

-- ================================================================================================
-- INSERT: Institutions
-- ================================================================================================
SET IDENTITY_INSERT [dbo].[Institutions] ON;

INSERT INTO [dbo].[Institutions]
    ([InstitutionID], [InstitutionName], [InstitutionCategory], [InstitutionType], [BusinessOwnership],
     [InstitutionClassification], [Location], [Address], [District], [Division], [Country], [Website],
     [IsActive], [rowguid], [CreatedDate], [ModifiedDate])
VALUES
    (1000, N'Dhaka Medical College Hospital',          N'Medical College and Hospital',   N'Government', N'Government',    N'Class A', N'Dhaka',       N'Secretariat Road, Dhaka-1000',          N'Dhaka',      N'Dhaka',       N'Bangladesh', N'www.dmch.gov.bd',           1, N'424c9022-db7f-4c3e-b2d8-7ce684e73b11', '2025-11-03', '2025-11-03'),
    (1001, N'Square Hospital Ltd.',                    N'Chain Laboratory and Hospital',  N'Private',    N'Corporate',     N'Class A', N'Dhaka',       N'18/F, Bir Uttam Qazi Nuruzzaman Sarak', N'Dhaka',      N'Dhaka',       N'Bangladesh', N'www.squarehospital.com',    1, N'9c2b5464-8122-48e7-a1cc-518dec1a9ec6', '2025-11-03', '2025-11-03'),
    (1002, N'United Hospital Limited',                 N'Chain Laboratory and Hospital',  N'Private',    N'Corporate',     N'Class A', N'Dhaka',       N'Plot 15, Road 71, Gulshan',             N'Dhaka',      N'Dhaka',       N'Bangladesh', N'www.uhlbd.com',             1, N'6acc24cb-44ed-4233-9134-24e22d1717ae', '2025-11-03', '2025-11-03'),
    (1003, N'Apollo Hospitals Dhaka',                  N'Chain Laboratory and Hospital',  N'Private',    N'Corporate',     N'Class A', N'Dhaka',       N'Plot 81, Block E, Bashundhara',         N'Dhaka',      N'Dhaka',       N'Bangladesh', N'www.apollodhaka.com',       1, N'de678ea3-29a1-43b7-8e2d-1eddcf963b4b', '2025-11-03', '2025-11-03'),
    (1004, N'Chittagong Medical College Hospital',     N'Medical College and Hospital',   N'Government', N'Government',    N'Class A', N'Chittagong',  N'K.B. Fazlul Kader Road',                N'Chittagong', N'Chittagong',  N'Bangladesh', N'www.cmch.gov.bd',           1, N'b3664a08-3ddf-4ca6-adec-8de774ecb325', '2025-11-03', '2025-11-03'),
    (1005, N'Rajshahi Medical College Hospital',       N'Medical College and Hospital',   N'Government', N'Government',    N'Class A', N'Rajshahi',    N'Laxmipur, Rajshahi',                    N'Rajshahi',   N'Rajshahi',    N'Bangladesh', N'www.rmch.gov.bd',           1, N'e50a08c1-73cf-4dd3-8d93-3ed466b382fc', '2025-11-03', '2025-11-03'),
    (1006, N'Sylhet MAG Osmani Medical College Hospital', N'Medical College and Hospital',N'Government', N'Government',    N'Class A', N'Sylhet',      N'Medical College Road',                  N'Sylhet',     N'Sylhet',      N'Bangladesh', N'www.somch.gov.bd',          1, N'55b7f490-cd7d-4831-91be-35e05c1027dc', '2025-11-03', '2025-11-03'),
    (1007, N'Khulna Medical College Hospital',         N'Medical College and Hospital',   N'Government', N'Government',    N'Class B', N'Khulna',      N'Medical College Road',                  N'Khulna',     N'Khulna',      N'Bangladesh', N'www.kmch.gov.bd',           1, N'28858001-f165-43af-80cc-a201774c6cef', '2025-11-03', '2025-11-03'),
    (1008, N'Popular Diagnostic Centre Ltd.',          N'Diagnostic Center',              N'Private',    N'Corporate',     N'Class A', N'Dhaka',       N'House 16, Road 2, Dhanmondi',           N'Dhaka',      N'Dhaka',       N'Bangladesh', N'www.populardiagnostic.com', 1, N'11cddaca-c76d-4932-b348-c0cead78eabf', '2025-11-03', '2025-11-03'),
    (1009, N'Ibn Sina Diagnostic & Imaging Center',    N'Diagnostic Center',              N'Private',    N'Corporate',     N'Class A', N'Dhaka',       N'House 48, Road 9A, Dhanmondi',          N'Dhaka',      N'Dhaka',       N'Bangladesh', N'www.ibnsina.com.bd',        1, N'6d3b0090-76ab-4d4e-a9ca-8f77ab4a4bed', '2025-11-03', '2025-11-03'),
    (1010, N'LABAID Diagnostic',                       N'Diagnostic Center',              N'Private',    N'Corporate',     N'Class A', N'Dhaka',       N'House 1, Road 4, Dhanmondi',            N'Dhaka',      N'Dhaka',       N'Bangladesh', N'www.labaidbd.com',          1, N'99ddc5bf-8f1b-49aa-9def-1f1e3255a9d1', '2025-11-03', '2025-11-03'),
    (1011, N'Bangladesh Institute of Research',        N'Research/Specialized Institute', N'Government', N'Government',    N'Class B', N'Dhaka',       N'Mohakhali, Dhaka',                      N'Dhaka',      N'Dhaka',       N'Bangladesh', N'www.birdem.org.bd',         1, N'0776fdf3-033c-4091-aa5d-ceb527a431c3', '2025-11-03', '2025-11-03'),
    (1012, N'Mymensingh Medical College Hospital',     N'Medical College and Hospital',   N'Government', N'Government',    N'Class A', N'Mymensingh',  N'College Road',                          N'Mymensingh', N'Mymensingh',  N'Bangladesh', N'www.mmch.gov.bd',           1, N'f2f4f8d9-1418-45e0-8a83-e089ef652ba4', '2025-11-03', '2025-11-03'),
    (1013, N'Evercare Hospital Dhaka',                 N'Chain Laboratory and Hospital',  N'Private',    N'Corporate',     N'Class A', N'Dhaka',       N'Plot 81, Block E, Bashundhara',         N'Dhaka',      N'Dhaka',       N'Bangladesh', N'www.evercarehospital.com',  1, N'47e5364f-f9ff-44ff-aa49-4daa1f1c29c0', '2025-11-03', '2025-11-03'),
    (1014, N'Delta Medical College Hospital',          N'Medical College and Hospital',   N'Private',    N'Corporate',     N'Class B', N'Dhaka',       N'Road 12, Mirpur-1',                     N'Dhaka',      N'Dhaka',       N'Bangladesh', N'www.deltamedical.edu.bd',   1, N'c0187c5a-7eed-4401-8540-c3edd2846308', '2025-11-03', '2025-11-03'),
    (1015, N'Test General Hospital',                   N'District Hospital',              N'Government', N'Government',    N'Class B', N'Mirpur',      N'Mirpur Road, Dhaka-1216',               N'Dhaka',      N'Dhaka',       N'Bangladesh', N'www.testgh.com.bd',         1, N'2331b680-fbe6-486a-a2fa-b2379f04d557', '2025-11-03', '2025-11-03'),
    (1016, N'Barisal Medical College Hospital',        N'Medical College and Hospital',   N'Government', N'Government',    N'Class B', N'Barisal',     N'Barisal City',                          N'Barisal',    N'Barisal',     N'Bangladesh', N'www.bmch.gov.bd',           1, N'a7b8c9d0-e1f2-3456-ab77-789012345678', '2025-11-03', '2025-11-03'),
    (1017, N'Rangpur Medical College Hospital',        N'Medical College and Hospital',   N'Government', N'Government',    N'Class B', N'Rangpur',     N'Rangpur City',                          N'Rangpur',    N'Rangpur',     N'Bangladesh', N'www.rmch-rangpur.gov.bd',   1, N'b8c9d0e1-f2a3-4567-bc88-890123456789', '2025-11-03', '2025-11-03'),
    (1018, N'Medinova Medical Services',               N'Diagnostic Center',              N'Private',    N'Proprietorship',N'Class B', N'Dhaka',       N'House 11, Road 4, Dhanmondi',           N'Dhaka',      N'Dhaka',       N'Bangladesh', N'www.medinova.com.bd',       1, N'c9d0e1f2-a3b4-5678-cd99-901234567890', '2025-11-03', '2025-11-03');

SET IDENTITY_INSERT [dbo].[Institutions] OFF;
GO

-- ================================================================================================
-- INSERT: ContactPersons
-- ================================================================================================
SET IDENTITY_INSERT [dbo].[ContactPersons] ON;

INSERT INTO [dbo].[ContactPersons]
    ([ContactPersonID], [InstitutionID], [EmployeeID], [Title], [ContactName], [Designation], [Department],
     [ContactType], [ContactPhone], [ContactEmail], [OnlineProfileLinks],
     [IsActive], [rowguid], [CreatedDate], [ModifiedDate])
VALUES
    (1,  1000, 1,    N'Prof.', N'Dr. Abdul Karim',     N'Head of Department', N'Pathology',    N'Doctor',          N'+880-1711-111111', N'dr.karim@dmch.gov.bd',     N'linkedin.com/in/drkarim',    1, N'05b808d7-0ecd-4ad2-8c15-9d62e61a6a15', '2025-11-03', '2025-11-03'),
    (2,  1000, 1,    N'Mr.',   N'Jamal Uddin',          N'Purchase Officer',   N'Administration',N'Purchase Officer',N'+880-1812-222222', N'jamal@dmch.gov.bd',        N'linkedin.com/in/jamal',      1, N'a3866a96-f4b9-46cc-843a-6bb66a9e06c6', '2025-11-03', '2025-11-03'),
    (3,  1001, 2,    N'Dr.',   N'Shahana Parveen',      N'Lab Director',       N'Laboratory',   N'Key Person',      N'+880-1713-333333', N'shahana@square.com',       N'linkedin.com/in/shahana',    1, N'ea7d10f0-b858-4c0e-a027-f4e2e407c57b', '2025-11-03', '2025-11-03'),
    (4,  1001, 2,    N'Ms.',   N'Rehana Begum',         N'Lab Manager',        N'Laboratory',   N'Lab Manager',     N'+880-1814-444444', N'rehana@square.com',        N'linkedin.com/in/rehana',     1, N'fe0f9bc2-7394-4e69-a50c-e6379024deb9', '2025-11-03', '2025-11-03'),
    (5,  1002, 3,    N'Dr.',   N'Mohammad Ali',         N'Chief Pathologist',  N'Pathology',    N'Doctor',          N'+880-1715-555555', N'mali@united.com',          N'linkedin.com/in/drali',      1, N'a8e068de-91f0-4618-87b7-eb8cfde46e66', '2025-11-03', '2025-11-03'),
    (6,  1003, 4,    N'Mr.',   N'Kamal Ahmed',          N'Procurement Manager',N'Procurement',  N'Purchase Officer',N'+880-1816-666666', N'kamal@apollo.com',         N'linkedin.com/in/kamal',      1, N'b71a932c-2ee8-4072-b082-94a4765dd67b', '2025-11-03', '2025-11-03'),
    (7,  1004, 5,    N'Prof.', N'Dr. Nazma Khatun',     N'Director',           N'Administration',N'Key Person',      N'+880-1717-777777', N'nazma@cmch.gov.bd',        N'linkedin.com/in/drnazma',    1, N'0360797f-ec51-4dd6-9aa4-1840fbd5f634', '2025-11-03', '2025-11-03'),
    (8,  1005, 6,    N'Dr.',   N'Hafizur Rahman',       N'Associate Professor',N'Medicine',     N'Doctor',          N'+880-1818-888888', N'hafiz@rmch.gov.bd',        N'linkedin.com/in/drhafiz',    1, N'8c0a640b-e73d-49cc-99cf-eab5f9804b41', '2025-11-03', '2025-11-03'),
    (9,  1006, 7,    N'Mr.',   N'Sadiqul Alam',         N'Admin Officer',      N'Administration',N'Other',           N'+880-1719-999999', N'sadiq@somch.gov.bd',       N'linkedin.com/in/sadiq',      1, N'a1f41071-bb54-40e3-ad38-77caf6db912d', '2025-11-03', '2025-11-03'),
    (10, 1007, 8,    N'Ms.',   N'Farhana Islam',        N'Purchase Manager',   N'Procurement',  N'Purchase Officer',N'+880-1820-101010', N'farhana@kmch.gov.bd',      N'linkedin.com/in/farhana',    1, N'ef560f6f-0497-4300-9edf-299ed45cbcc3', '2025-11-03', '2025-11-03'),
    (11, 1008, 9,    N'Dr.',   N'Shamsul Hoque',        N'Medical Director',   N'Administration',N'Key Person',      N'+880-1721-121212', N'shamsul@popular.com',      N'linkedin.com/in/drshamsul',  1, N'12e8106b-323c-46aa-b3af-30c79b3968d9', '2025-11-03', '2025-11-03'),
    (12, 1009, 10,   N'Mr.',   N'Belal Hossain',        N'Operations Manager', N'Operations',   N'Key Person',      N'+880-1822-131313', N'belal@ibnsina.com',        N'linkedin.com/in/belal',      1, N'09be8b21-18ee-490c-a208-227f3ebc8db5', '2025-11-03', '2025-11-03'),
    (13, 1010, 11,   N'Dr.',   N'Tahmina Akter',        N'Lab Consultant',     N'Laboratory',   N'Consultant',      N'+880-1723-141414', N'tahmina@labaid.com',       N'linkedin.com/in/drtahmina',  1, N'0dbe002e-db0d-41d7-a072-76be3154fbe6', '2025-11-03', '2025-11-03'),
    (14, 1011, 12,   N'Prof.', N'Dr. Iqbal Mahmud',     N'Research Director',  N'Research',     N'Doctor',          N'+880-1824-151515', N'iqbal@birdem.org.bd',      N'linkedin.com/in/driqbal',    1, N'18bde0b0-cf90-4ba5-8d09-0a701d2fe459', '2025-11-03', '2025-11-03'),
    (15, 1012, 13,   N'Mr.',   N'Nurul Huda',           N'Store Manager',      N'Stores',       N'Other',           N'+880-1725-161616', N'nurul@mmch.gov.bd',        N'linkedin.com/in/nurul',      1, N'e603f544-0d26-4813-b837-4cf8a8e9c88f', '2025-11-03', '2025-11-03'),
    (16, 1000, NULL, N'Mr.',   N'Test Contact Person',  N'Manager',            N'Laboratory',   N'Lab Manager',     N'+880-1700-888888', N'test.contact@company.com', N'linkedin.com/in/testcontact',1, N'deea0e05-1255-428a-b25d-d733bc28e721', '2025-11-03', '2025-11-03'),
    (17, 1013, 14,   N'Dr.',   N'Shirin Sultana',       N'Lab Director',       N'Laboratory',   N'Key Person',      N'+880-1726-171717', N'shirin@evercare.com',      N'linkedin.com/in/shirin',     1, N'a1b2c3d4-e5f6-7890-ab11-111234567891', '2025-11-03', '2025-11-03'),
    (18, 1014, 15,   N'Mr.',   N'Rashed Khan',          N'Purchase Manager',   N'Procurement',  N'Purchase Officer',N'+880-1827-181818', N'rashed@delta.com',         N'linkedin.com/in/rashed',     1, N'b2c3d4e5-f6a7-8901-bc22-222345678902', '2025-11-03', '2025-11-03'),
    (19, 1015, 16,   N'Ms.',   N'Fahmida Akhter',       N'Admin Officer',      N'Administration',N'Other',           N'+880-1728-191919', N'fahmida@testgh.com',       N'linkedin.com/in/fahmida',    1, N'c3d4e5f6-a7b8-9012-cd33-333456789013', '2025-11-03', '2025-11-03');

SET IDENTITY_INSERT [dbo].[ContactPersons] OFF;
GO

-- ================================================================================================
-- INSERT: Devices
-- ================================================================================================
SET IDENTITY_INSERT [dbo].[Devices] ON;

INSERT INTO [dbo].[Devices]
    ([DeviceID], [SupplierID], [DeviceName], [DeviceType], [DeviceCategory], [Department],
     [CountryOrigin], [ManufacturerCompany], [BrandName], [ModelNumber],
     [PurchaseDate], [PurchaseCost], [Currency], [InstallationDate],
     [PowerRequirements], [CalibrationIntervalDays], [PreventiveMaintenanceIntervalDays],
     [Criticality], [IsActive], [rowguid], [CreatedDate], [ModifiedDate])
VALUES
    (1,  1000, N'Cobas c 501 Clinical Chemistry Analyzer', N'Automatic',      N'Chemistry Analyzer',    N'Biochemistry',  N'Switzerland', N'Roche Diagnostics',          N'Cobas',      N'c 501',    '2023-01-15', 5000000.00,  N'BDT', '2023-02-01', N'220V/50Hz', 365, 180, N'High',     1, N'38e700ae-a436-4ad5-917c-5e9faec1a5a2', '2025-11-03', '2025-11-03'),
    (2,  1001, N'ADVIA Chemistry XPT System',              N'Automatic',      N'Chemistry Analyzer',    N'Biochemistry',  N'Germany',     N'Siemens Healthineers',       N'ADVIA',      N'XPT',      '2024-01-10', 6500000.00,  N'BDT', '2024-02-05', N'220V/50Hz', 365, 180, N'High',     1, N'2d63a4f4-4cf3-456c-b458-ee510aeb8e38', '2025-11-03', '2025-11-03'),
    (3,  1002, N'Architect i2000SR',                       N'Automatic',      N'Immunoassay Analyzer',  N'Immunoassay',   N'USA',         N'Abbott Laboratories',        N'Architect',  N'i2000SR',  '2023-03-20', 7000000.00,  N'BDT', '2023-04-10', N'220V/50Hz', 365, 180, N'High',     1, N'e90385e9-6339-4593-8941-6d12fa20952c', '2025-11-03', '2025-11-03'),
    (4,  1003, N'DxH 900 Hematology Analyzer',             N'Automatic',      N'Hematology Analyzer',   N'Hematology',    N'USA',         N'Beckman Coulter',            N'DxH',        N'900',      '2023-05-15', 4500000.00,  N'BDT', '2023-06-01', N'220V/50Hz', 180, 90,  N'High',     1, N'c4ab7c7a-7c29-4635-8a29-256439c03c2f', '2025-11-03', '2025-11-03'),
    (5,  1004, N'XN-1000 Hematology Analyzer',             N'Automatic',      N'Hematology Analyzer',   N'Hematology',    N'Japan',       N'Sysmex Corporation',         N'XN',         N'1000',     '2023-07-20', 5500000.00,  N'BDT', '2023-08-05', N'220V/50Hz', 180, 90,  N'High',     1, N'f82fad06-3dbf-42c7-83ed-4bf46e3a45d7', '2025-11-03', '2025-11-03'),
    (6,  1005, N'Element HT5 Chemistry Analyzer',          N'Semi-Automatic', N'Chemistry Analyzer',    N'Biochemistry',  N'USA',         N'Thermo Fisher Scientific',   N'Element',    N'HT5',      '2023-09-10', 3500000.00,  N'BDT', '2023-09-25', N'220V/50Hz', 365, 180, N'Medium',   1, N'4fb602b7-072a-42ae-81df-35abe9c47bcd', '2025-11-03', '2025-11-03'),
    (7,  1006, N'Variant II Turbo HbA1c',                  N'Automatic',      N'HbA1c Analyzer',        N'Biochemistry',  N'USA',         N'Bio-Rad Laboratories',       N'Variant',    N'II Turbo', '2023-11-15', 4000000.00,  N'BDT', '2023-12-01', N'220V/50Hz', 365, 180, N'Medium',   1, N'b0c87c25-62cd-4744-9ae4-01b193bd2da5', '2025-11-03', '2025-11-03'),
    (8,  1007, N'Alinity ci Immunoassay Analyzer',         N'Automatic',      N'Immunoassay Analyzer',  N'Immunoassay',   N'USA',         N'Abbott Laboratories',        N'Alinity',    N'ci',       '2024-01-20', 8000000.00,  N'BDT', '2024-02-10', N'220V/50Hz', 365, 180, N'High',     1, N'a2181ed6-0768-4ba4-896a-65a95252d170', '2025-11-03', '2025-11-03'),
    (9,  1008, N'BC-6800 Auto Hematology Analyzer',        N'Automatic',      N'Hematology Analyzer',   N'Hematology',    N'China',       N'Mindray Medical',            N'BC',         N'6800',     '2024-03-15', 3800000.00,  N'BDT', '2024-04-01', N'220V/50Hz', 180, 90,  N'Medium',   1, N'dd6f592c-2d6d-49ea-9948-64af64a24849', '2025-11-03', '2025-11-03'),
    (10, 1009, N'Cobas 6800 Molecular System',             N'Automatic',      N'Molecular Diagnostics', N'Microbiology',  N'Switzerland', N'Roche Diagnostics',          N'Cobas',      N'6800',     '2024-05-10', 12000000.00, N'BDT', '2024-06-01', N'220V/50Hz', 365, 180, N'Critical', 1, N'6ccd7cfc-7fb4-446e-8921-3ddf63cd9374', '2025-11-03', '2025-11-03'),
    (11, 1010, N'ABX Micros ES 60 ESR Analyzer',           N'Automatic',      N'ESR Analyzer',          N'Hematology',    N'France',      N'Horiba Medical',             N'ABX Micros', N'ES 60',    '2024-07-15', 1500000.00,  N'BDT', '2024-08-01', N'220V/50Hz', 180, 90,  N'Low',      1, N'bd00e015-f812-48ca-b9f1-b6be5dbda30f', '2025-11-03', '2025-11-03'),
    (12, 1011, N'Vitros 5600 Immunodiagnostic',            N'Automatic',      N'Immunoassay Analyzer',  N'Immunoassay',   N'USA',         N'Ortho Clinical Diagnostics', N'Vitros',     N'5600',     '2024-09-10', 7500000.00,  N'BDT', '2024-09-25', N'220V/50Hz', 365, 180, N'High',     1, N'5a8c9c89-4f9d-4c01-914b-f0ef02ade529', '2025-11-03', '2025-11-03'),
    (13, 1012, N'BacT/ALERT 3D',                           N'Automatic',      N'Blood Culture System',  N'Microbiology',  N'France',      N'bioMerieux',                 N'BacT/ALERT', N'3D',       '2024-11-15', 5000000.00,  N'BDT', '2024-12-01', N'220V/50Hz', 365, 180, N'High',     1, N'a167c5cf-5d3c-47d1-ade8-cb1c24fda8b2', '2025-11-03', '2025-11-03'),
    (14, 1013, N'LIAISON XL Immunoassay',                  N'Automatic',      N'Immunoassay Analyzer',  N'Immunoassay',   N'Italy',       N'DiaSorin',                   N'LIAISON',    N'XL',       '2025-01-10', 6000000.00,  N'BDT', '2025-01-25', N'220V/50Hz', 365, 180, N'Medium',   1, N'4175344e-6725-43db-a078-b5ed4c1ccfdc', '2025-11-03', '2025-11-03'),
    (15, 1014, N'ACL TOP 750 CTS Hemostasis',              N'Automatic',      N'Hemostasis Analyzer',   N'Hematology',    N'Spain',       N'Werfen Group',               N'ACL TOP',    N'750 CTS',  '2025-03-15', 5500000.00,  N'BDT', '2025-04-01', N'220V/50Hz', 180, 90,  N'High',     1, N'0c1a5bbe-7cb4-450b-bfbe-6c55e6f794f9', '2025-11-03', '2025-11-03'),
    (16, 1015, N'Test Analyzer System',                    N'Automatic',      N'Clinical Chemistry',    N'Biochemistry',  N'Bangladesh',  N'Test Manufacturer',          N'TestBrand',  N'TB-1000',  '2025-06-01', 1000000.00,  N'BDT', '2025-06-15', N'220V/50Hz', 180, 90,  N'Medium',   1, N'69140016-4aea-4b8a-9d03-f4b34fb51586', '2025-11-03', '2025-11-03'),
    (17, 1016, N'BD FACSCanto II Flow Cytometer',          N'Automatic',      N'Flow Cytometer',        N'Immunology',    N'USA',         N'Becton Dickinson',           N'FACSCanto',  N'II',       '2025-07-20', 8500000.00,  N'BDT', '2025-08-05', N'220V/50Hz', 365, 180, N'High',     1, N'd4e5f6a7-b8c9-0123-de44-444567890124', '2025-11-03', '2025-11-03'),
    (18, 1017, N'PerkinElmer EnVision Multilabel Reader',  N'Automatic',      N'Microplate Reader',     N'Research',      N'USA',         N'PerkinElmer',                N'EnVision',   N'2104',     '2025-08-10', 7200000.00,  N'BDT', '2025-08-25', N'220V/50Hz', 365, 180, N'Medium',   1, N'e5f6a7b8-c9d0-1234-ef55-555678901235', '2025-11-03', '2025-11-03'),
    (19, 1018, N'Fujifilm D-EVO III DR Detector',         N'Manual',         N'Digital Radiography',   N'Radiology',     N'Japan',       N'Fujifilm Healthcare',        N'D-EVO',      N'III',      '2025-09-15', 4500000.00,  N'BDT', '2025-09-30', N'220V/50Hz', 365, 180, N'Medium',   1, N'f6a7b8c9-d0e1-2345-f066-666789012346', '2025-11-03', '2025-11-03');

SET IDENTITY_INSERT [dbo].[Devices] OFF;
GO

-- ================================================================================================
-- INSERT: InstitutionDevices
-- ================================================================================================
SET IDENTITY_INSERT [dbo].[InstitutionDevices] ON;

INSERT INTO [dbo].[InstitutionDevices]
    ([InstitutionDeviceID], [InstitutionID], [DeviceID], [SerialNumber], [AssetTag],
     [LocationWithinInstitution], [AssignedDepartment], [Status], [NumberOfMachines], [IsBCOCSupplied],
     [InstallationDate], [OwnershipType], [PurchaseOrderNumber], [WarrantyExpiryDate],
     [ServiceContractProvider], [ServiceContractStatus],
     [rowguid], [CreatedDate], [ModifiedDate])
VALUES
    (1,  1000, 1,  N'SN-C501-001',   N'AT-10001', N'Lab A, Floor 2',     N'Biochemistry', N'Active', 2, 1, '2023-02-05', N'Owned',  N'PO-DMCH-001', '2026-02-05', N'Roche Service',       N'Active', N'6d708562-deff-4594-ab66-2d1b3e248325', '2025-11-03', '2025-11-03'),
    (2,  1001, 2,  N'SN-XPT-001',    N'AT-10002', N'Lab B, Floor 3',     N'Biochemistry', N'Active', 1, 1, '2024-02-10', N'Owned',  N'PO-SQH-002',  '2027-02-10', N'Siemens Service',     N'Active', N'adc62966-d92a-4ac5-bbf4-1ef7a16b02a9', '2025-11-03', '2025-11-03'),
    (3,  1002, 3,  N'SN-i2000-001',  N'AT-10003', N'Immunology Lab',     N'Immunoassay',  N'Active', 1, 0, '2023-04-15', N'Owned',  N'PO-UHL-003',  '2026-04-15', N'Abbott Service',      N'Active', N'46d21e6d-9adb-487e-9b24-324dc4e4fa77', '2025-11-03', '2025-11-03'),
    (4,  1003, 4,  N'SN-DxH900-001', N'AT-10004', N'Hematology Section', N'Hematology',   N'Active', 1, 1, '2023-06-05', N'Leased', N'PO-APL-004',  '2026-06-05', N'Beckman Service',     N'Active', N'e0fa7d08-9fa0-4f05-94e9-8734eed5dc8a', '2025-11-03', '2025-11-03'),
    (5,  1004, 5,  N'SN-XN1000-001', N'AT-10005', N'Central Lab',        N'Hematology',   N'Active', 2, 1, '2023-08-10', N'Owned',  N'PO-CMCH-005', '2026-08-10', N'Sysmex Service',      N'Active', N'c3b33934-85ec-496b-98d6-ed5f6fe44f37', '2025-11-03', '2025-11-03'),
    (6,  1005, 6,  N'SN-HT5-001',    N'AT-10006', N'Chemistry Lab',      N'Biochemistry', N'Active', 1, 0, '2023-09-30', N'Owned',  N'PO-RMCH-006', '2026-09-30', N'Thermo Service',      N'Active', N'bda57a4c-dae4-45e8-9a7a-11140d7dde80', '2025-11-03', '2025-11-03'),
    (7,  1006, 7,  N'SN-V2T-001',    N'AT-10007', N'Diabetes Lab',       N'Biochemistry', N'Active', 1, 1, '2023-12-05', N'Owned',  N'PO-SOMCH-007',N'2026-12-05', N'BioRad Service',     N'Active', N'45039e99-76d3-4f4c-85d2-f527c36c1bf2', '2025-11-03', '2025-11-03'),
    (8,  1007, 8,  N'SN-ALT-001',    N'AT-10008', N'Immunology Lab',     N'Immunoassay',  N'Active', 1, 1, '2024-02-15', N'Owned',  N'PO-KMCH-008', '2027-02-15', N'Abbott Service',      N'Active', N'9cd34c80-eee7-4db2-994a-1f588fcf9b21', '2025-11-03', '2025-11-03'),
    (9,  1008, 9,  N'SN-BC6800-001', N'AT-10009', N'Hematology Lab',     N'Hematology',   N'Active', 2, 0, '2024-04-05', N'Owned',  N'PO-PDC-009',  '2027-04-05', N'Mindray Service',     N'Active', N'ea54a794-75a9-458a-a195-c51be8f653e2', '2025-11-03', '2025-11-03'),
    (10, 1009, 10, N'SN-C6800-001',  N'AT-10010', N'Molecular Lab',      N'Microbiology', N'Active', 1, 1, '2024-06-10', N'Owned',  N'PO-ISD-010',  '2027-06-10', N'Roche Service',       N'Active', N'c2df649f-ccb3-44e3-b16f-7348d9f5c437', '2025-11-03', '2025-11-03'),
    (11, 1010, 11, N'SN-ES60-001',   N'AT-10011', N'Hematology Section', N'Hematology',   N'Active', 1, 0, '2024-08-05', N'Owned',  N'PO-LAB-011',  '2027-08-05', N'Horiba Service',      N'Active', N'24b8bd21-73b5-436d-bf31-0e320249057e', '2025-11-03', '2025-11-03'),
    (12, 1011, 12, N'SN-V5600-001',  N'AT-10012', N'Immunology Lab',     N'Immunoassay',  N'Active', 1, 1, '2024-09-30', N'Owned',  N'PO-BIR-012',  '2027-09-30', N'Ortho Service',       N'Active', N'f76f88b1-16e5-49f6-8082-3947a732595d', '2025-11-03', '2025-11-03'),
    (13, 1012, 13, N'SN-BA3D-001',   N'AT-10013', N'Microbiology Lab',   N'Microbiology', N'Active', 1, 1, '2024-12-05', N'Owned',  N'PO-MMCH-013', '2027-12-05', N'bioMerieux Service',  N'Active', N'14c12557-66a7-4011-a1ce-54110def10b0', '2025-11-03', '2025-11-03'),
    (14, 1013, 14, N'SN-LXL-001',    N'AT-10014', N'Serology Lab',       N'Immunoassay',  N'Active', 1, 0, '2025-01-30', N'Owned',  N'PO-EVR-014',  '2028-01-30', N'DiaSorin Service',    N'Active', N'0dede1c6-d5ad-4650-b017-f16ede9096bd', '2025-11-03', '2025-11-03'),
    (15, 1014, 15, N'SN-ACL750-001', N'AT-10015', N'Coagulation Lab',    N'Hematology',   N'Active', 1, 1, '2025-04-05', N'Owned',  N'PO-DLT-015',  '2028-04-05', N'Werfen Service',      N'Active', N'74282351-d4bb-433c-8cd4-964cf15efa3b', '2025-11-03', '2025-11-03'),
    (16, 1015, 16, N'SN-TEST-001',   N'AT-10016', N'Test Lab',           N'Biochemistry', N'Active', 1, 0, '2025-06-20', N'Owned',  N'PO-TEST-016', '2028-06-20', N'Test Service',        N'Active', N'a7b8c9d0-e1f2-3456-ab77-777890123457', '2025-11-03', '2025-11-03'),
    (17, 1016, 17, N'SN-FACSC-001',  N'AT-10017', N'Flow Cytometry Lab', N'Immunology',   N'Active', 1, 1, '2025-08-10', N'Owned',  N'PO-BAR-017',  '2028-08-10', N'BD Service',          N'Active', N'b8c9d0e1-f2a3-4567-bc88-888901234568', '2025-11-03', '2025-11-03'),
    (18, 1017, 18, N'SN-ENV-001',    N'AT-10018', N'Research Lab',       N'Research',     N'Active', 1, 1, '2025-09-01', N'Owned',  N'PO-RANG-018', '2028-09-01', N'PerkinElmer Service', N'Active', N'c9d0e1f2-a3b4-5678-cd99-999012345679', '2025-11-03', '2025-11-03'),
    (19, 1018, 19, N'SN-FUJI-001',   N'AT-10019', N'Radiology Dept',     N'Radiology',    N'Active', 1, 0, '2025-10-05', N'Owned',  N'PO-MED-019',  '2028-10-05', N'Fujifilm Service',    N'Active', N'd0e1f2a3-b4c5-6789-de00-000123456780', '2025-11-03', '2025-11-03');

SET IDENTITY_INSERT [dbo].[InstitutionDevices] OFF;
GO

-- ================================================================================================
-- INSERT: Visits
-- ================================================================================================
SET IDENTITY_INSERT [dbo].[Visits] ON;

INSERT INTO [dbo].[Visits]
    ([VisitID], [InstitutionID], [EmployeeID], [ContactPersonID], [VisitDate],
     [VisitMode], [VisitType], [VisitPurpose], [VisitResults], [VisitDurationMinutes],
     [NextFollowUpDate], [rowguid], [CreatedDate], [ModifiedDate])
VALUES
    (1,  1000, 1,  1,    '2025-01-15', N'Onsite', N'Survey',       N'Annual equipment survey',          N'Positive feedback; upgrade interest', 45,  '2025-04-15', N'794c56b4-70f1-44e6-bc7e-d8c3dfe739dc', '2025-11-03', '2025-11-03'),
    (2,  1001, 2,  3,    '2025-02-10', N'Remote', N'Follow-up',    N'Discuss new product launch',       N'Demo arranged',                       30,  '2025-03-10', N'1a24c836-03e2-479b-bfcd-17a975ed636d', '2025-11-03', '2025-11-03'),
    (3,  1002, 3,  5,    '2025-01-20', N'Onsite', N'Installation', N'New equipment installation',       N'Successfully installed',              120, '2025-02-20', N'bb0c4506-0d4d-493c-b7de-1c593d104411', '2025-11-03', '2025-11-03'),
    (4,  1003, 4,  6,    '2025-02-05', N'Onsite', N'Training',     N'Staff training on new analyzer',   N'Training completed',                  180, '2025-03-05', N'6e648a57-80e1-4226-b928-fdd585cc460b', '2025-11-03', '2025-11-03'),
    (5,  1004, 5,  7,    '2025-01-25', N'Onsite', N'Survey',       N'KYC data collection',              N'Data collected successfully',         60,  '2025-04-25', N'8ff845b7-03d1-4f31-8149-d21bc9543ad3', '2025-11-03', '2025-11-03'),
    (6,  1005, 6,  8,    '2025-02-15', N'Remote', N'Follow-up',    N'Service contract renewal',         N'Contract renewed',                    40,  '2025-05-15', N'96eac026-4b2b-495c-a379-06c2777ee430', '2025-11-03', '2025-11-03'),
    (7,  1006, 7,  9,    '2025-01-30', N'Onsite', N'Installation', N'Equipment commissioning',          N'Commissioned successfully',           150, '2025-03-01', N'4498022f-06df-4d9d-9205-659d560db32d', '2025-11-03', '2025-11-03'),
    (8,  1007, 8,  10,   '2025-02-20', N'Onsite', N'Survey',       N'Market intelligence gathering',    N'Competitor info collected',           55,  '2025-05-20', N'3bf215e8-b577-4711-8d31-72c752799c23', '2025-11-03', '2025-11-03'),
    (9,  1008, 9,  11,   '2025-02-01', N'Onsite', N'Service Call', N'Routine maintenance',              N'Maintenance completed',               90,  '2025-05-01', N'd6854ab7-120a-4986-b888-d903cf2bc845', '2025-11-03', '2025-11-03'),
    (10, 1009, 10, 12,   '2025-02-25', N'Remote', N'Follow-up',    N'Reagent supply follow-up',         N'Order placed',                        25,  '2025-03-25', N'757f6e5c-a28a-4e05-9c3c-854364a82f70', '2025-11-03', '2025-11-03'),
    (11, 1010, 11, 13,   '2025-02-08', N'Onsite', N'Training',     N'Advanced troubleshooting training',N'Training successful',                 240, '2025-05-08', N'5c59e093-7aae-4a48-800f-8c0309955e95', '2025-11-03', '2025-11-03'),
    (12, 1011, 12, 14,   '2025-02-18', N'Onsite', N'Survey',       N'Future requirements assessment',   N'Expansion plans identified',          70,  '2025-05-18', N'315d7261-b96e-470d-bbbe-7d846a01f266', '2025-11-03', '2025-11-03'),
    (13, 1012, 13, 15,   '2025-02-28', N'Onsite', N'Installation', N'New lab setup',                    N'Setup completed',                     180, '2025-05-28', N'ef72566e-92dc-4cc1-affb-c4ba4aaeac8a', '2025-11-03', '2025-11-03'),
    (14, 1013, 14, 11,   '2025-03-05', N'Remote', N'Follow-up',    N'Service feedback collection',      N'Positive feedback received',          35,  '2025-06-05', N'b1d7871c-5479-4608-a184-39ddb38f94a3', '2025-11-03', '2025-11-03'),
    (15, 1014, 15, 12,   '2025-03-10', N'Onsite', N'Survey',       N'Equipment utilization study',      N'Study completed',                     80,  '2025-06-10', N'9aaa9b81-1161-40c0-a7b6-4148c272ada6', '2025-11-03', '2025-11-03'),
    (16, 1000, 1,  16,   '2025-03-15', N'Onsite', N'Survey',       N'Test visit for demo',              N'Demo performed successfully',         60,  '2025-06-15', N'84ef90f5-cd36-454a-8b67-ba0185fa5f97', '2025-11-03', '2025-11-03'),
    (17, 1015, 16, 19,   '2025-03-20', N'Onsite', N'Survey',       N'Initial KYC data collection',      N'All data captured',                   45,  '2025-06-20', N'a1b2c3d4-e5f6-7890-ab11-111234567801', '2025-11-03', '2025-11-03'),
    (18, 1016, 17, 17,   '2025-03-25', N'Onsite', N'Installation', N'Flow cytometer installation',      N'Installation completed',              150, '2025-04-25', N'b2c3d4e5-f6a7-8901-bc22-222345678902', '2025-11-03', '2025-11-03'),
    (19, 1017, 18, 18,   '2025-04-01', N'Remote', N'Follow-up',    N'Post-installation follow-up',      N'Satisfied with service',              30,  '2025-05-01', N'c3d4e5f6-a7b8-9012-cd33-333456789013', '2025-11-03', '2025-11-03'),
    (20, 1018, 19, NULL, '2025-04-10', N'Onsite', N'Training',     N'DR system training',               N'Staff trained',                       120, '2025-07-10', N'd4e5f6a7-b8c9-0123-de44-444567890124', '2025-11-03', '2025-11-03');

SET IDENTITY_INSERT [dbo].[Visits] OFF;
GO

-- ================================================================================================
-- INSERT: ComplaintRequests
-- ================================================================================================
SET IDENTITY_INSERT [dbo].[ComplaintRequests] ON;

INSERT INTO [dbo].[ComplaintRequests]
    ([ComplaintID], [InstitutionID], [ContactPersonID], [ReceivedByEmployeeID], [TicketNumber],
     [ComplaintSource], [ComplaintDate], [ComplaintType], [Priority], [SLA_TargetHours],
     [AssignedToEmployeeID], [EscalationLevel], [IsUnderWarranty], [VendorNotified],
     [ComplaintDescription], [Status], [ResolutionNotes], [ResolvedDate],
     [rowguid], [CreatedDate], [ModifiedDate])
VALUES
    (3,  1000, 1,  1,  N'TKT-20250101-1001', N'Phone', '2025-11-03', N'Equipment Issue', N'High',     24, 2,  0, 0, 0, N'Cobas analyzer showing error E502',       N'Resolved',    N'Issue resolved by replacing sensor', '2025-11-03', N'8b79f339-d9df-4e7d-9434-963f272875f4', '2025-11-03', '2025-11-03'),
    (4,  1001, 3,  2,  N'TKT-20250102-1002', N'Email', '2025-11-03', N'Service Request', N'Medium',   48, 2,  0, 0, 0, N'Request preventive maintenance',          N'In Progress', N'Technician scheduled',               NULL,         N'8e63966d-35d3-4552-860b-8a0b28b0462b', '2025-11-03', '2025-11-03'),
    (5,  1002, 5,  3,  N'TKT-20250103-1003', N'Web',   '2025-11-03', N'Equipment Issue', N'Critical', 12, 5,  0, 0, 0, N'Immunoassay analyzer not starting',       N'Open',        NULL,                                  NULL,         N'209c69f4-60ef-4239-b5f4-8396904b106f', '2025-11-03', '2025-11-03'),
    (6,  1003, 6,  4,  N'TKT-20250104-1004', N'Phone', '2025-11-03', N'Service Request', N'Low',      72, 5,  0, 0, 0, N'Need calibration service',                N'Resolved',    N'Calibration performed',              '2025-11-03', N'aaa210f8-2fab-4095-a528-9b73b762c056', '2025-11-03', '2025-11-03'),
    (7,  1004, 7,  5,  N'TKT-20250105-1005', N'Email', '2025-11-03', N'Equipment Issue', N'High',     24, 2,  0, 0, 0, N'Sample probe clogged',                    N'In Progress', N'Cleaning in progress',               NULL,         N'3f9e695f-2962-4282-b06e-1d18f79aa502', '2025-11-03', '2025-11-03'),
    (8,  1005, 8,  6,  N'TKT-20250106-1006', N'Web',   '2025-11-03', N'General',         N'Medium',   48, 11, 0, 0, 0, N'Training request for new staff',          N'Resolved',    N'Training scheduled',                 '2025-11-03', N'6497af5e-f271-482d-b73d-283f5976a8d9', '2025-11-03', '2025-11-03'),
    (9,  1006, 9,  7,  N'TKT-20250107-1007', N'Phone', '2025-11-03', N'Equipment Issue', N'Medium',   48, 9,  0, 0, 0, N'Reagent mixer not working',               N'Open',        NULL,                                  NULL,         N'c51ce135-42b4-4708-ba52-b1a77e1995ea', '2025-11-03', '2025-11-03'),
    (10, 1007, 10, 8,  N'TKT-20250108-1008', N'Visit', '2025-11-03', N'Service Request', N'Low',      72, 11, 0, 0, 0, N'Service contract renewal inquiry',        N'Closed',      N'Renewed for another year',           '2025-11-03', N'9c25d6a6-4891-430a-825c-6264760758c2', '2025-11-03', '2025-11-03'),
    (11, 1008, 11, 9,  N'TKT-20250109-1009', N'Email', '2025-11-03', N'Equipment Issue', N'High',     24, 2,  0, 0, 0, N'Flow cell contamination',                 N'In Progress', N'Parts ordered',                      NULL,         N'f049faa8-6ac2-4400-b716-e764f7027146', '2025-11-03', '2025-11-03'),
    (12, 1009, 12, 10, N'TKT-20250110-1010', N'Phone', '2025-11-03', N'Service Request', N'Medium',   48, 5,  0, 0, 0, N'Need spare parts',                        N'Open',        NULL,                                  NULL,         N'04f7a067-3376-4a0f-8eaa-8f34502d4778', '2025-11-03', '2025-11-03'),
    (13, 1010, 13, 11, N'TKT-20250111-1011', N'Web',   '2025-11-03', N'Equipment Issue', N'Critical', 12, 2,  0, 0, 0, N'System crash during operation',           N'Open',        NULL,                                  NULL,         N'a10d356f-3ed2-42b4-af88-d7d41e96a3c5', '2025-11-03', '2025-11-03'),
    (14, 1011, 14, 12, N'TKT-20250112-1012', N'Email', '2025-11-03', N'General',         N'Low',      72, 14, 0, 0, 0, N'Documentation request',                   N'Resolved',    N'Documents sent via email',           '2025-11-03', N'35300968-0b9c-4b85-b341-4d06a23b8880', '2025-11-03', '2025-11-03'),
    (15, 1012, 15, 13, N'TKT-20250113-1013', N'Phone', '2025-11-03', N'Equipment Issue', N'High',     24, 9,  0, 0, 0, N'Barcode reader malfunction',              N'In Progress', N'Replacement ordered',                NULL,         N'1f912841-c9e6-4129-add8-9e0d71b56b39', '2025-11-03', '2025-11-03'),
    (16, 1013, 11, 14, N'TKT-20250114-1014', N'Visit', '2025-11-03', N'Service Request', N'Medium',   48, 11, 0, 0, 0, N'Preventive maintenance due',              N'Open',        NULL,                                  NULL,         N'57053667-e442-450f-8914-ee426730ed86', '2025-11-03', '2025-11-03'),
    (17, 1014, 12, 15, N'TKT-20250115-1015', N'Web',   '2025-11-03', N'Equipment Issue', N'Medium',   48, 5,  0, 0, 0, N'Temperature fluctuation in incubator',    N'Open',        NULL,                                  NULL,         N'8c99812c-e202-4a3d-bd6b-325d1c01647f', '2025-11-03', '2025-11-03'),
    (18, 1000, 16, 1,  N'TKT-20251103-2579', N'Phone', '2025-11-03', N'Equipment Issue', N'Medium',   48, 2,  0, 0, 0, N'Test complaint for demonstration',        N'Open',        NULL,                                  NULL,         N'33f10bc2-7085-41f6-8261-f4faa3a43030', '2025-11-03', '2025-11-03'),
    (19, 1015, 19, 16, N'TKT-20251103-2580', N'Email', '2025-11-03', N'Equipment Issue', N'High',     24, 17, 0, 0, 0, N'Test analyzer error during startup',      N'Open',        NULL,                                  NULL,         N'e5f6a7b8-c9d0-1234-ef55-555678901285', '2025-11-03', '2025-11-03'),
    (20, 1016, 17, 17, N'TKT-20251103-2581', N'Web',   '2025-11-03', N'Service Request', N'Medium',   48, 18, 0, 0, 0, N'Need calibration for flow cytometer',     N'In Progress', N'Calibration scheduled',              NULL,         N'f6a7b8c9-d0e1-2345-f066-666789012396', '2025-11-03', '2025-11-03'),
    (21, 1017, 18, 18, N'TKT-20251103-2582', N'Phone', '2025-11-03', N'Equipment Issue', N'Low',      72, 19, 0, 0, 0, N'Software glitch in reader',               N'Resolved',    N'Software updated',                   '2025-11-03', N'a7b8c9d0-e1f2-3456-ab77-777890123407', '2025-11-03', '2025-11-03');

SET IDENTITY_INSERT [dbo].[ComplaintRequests] OFF;
GO

-- ================================================================================================
-- INSERT: DeviceDocuments
-- ================================================================================================
SET IDENTITY_INSERT [dbo].[DeviceDocuments] ON;

INSERT INTO [dbo].[DeviceDocuments]
    ([DocumentID], [DeviceID], [DocType], [DocPath], [UploadedByEmployeeID], [UploadedDate])
VALUES
    (1,  1,  N'User Manual',            N'/docs/equipment/cobas_c501_manual.pdf',          1,  '2025-11-03'),
    (2,  1,  N'Installation Checklist', N'/docs/equipment/cobas_c501_install.pdf',         2,  '2025-11-03'),
    (3,  2,  N'User Manual',            N'/docs/equipment/advia_xpt_manual.pdf',           1,  '2025-11-03'),
    (4,  3,  N'Calibration Certificate',N'/docs/equipment/architect_i2000_cal.pdf',        2,  '2025-11-03'),
    (5,  4,  N'Service Manual',         N'/docs/equipment/dxh900_service.pdf',             5,  '2025-11-03'),
    (6,  5,  N'Installation Checklist', N'/docs/equipment/xn1000_install.pdf',             5,  '2025-11-03'),
    (7,  6,  N'User Manual',            N'/docs/equipment/element_ht5_manual.pdf',         6,  '2025-11-03'),
    (8,  7,  N'Calibration Certificate',N'/docs/equipment/variant_ii_cal.pdf',             7,  '2025-11-03'),
    (9,  8,  N'Service Manual',         N'/docs/equipment/alinity_ci_service.pdf',         8,  '2025-11-03'),
    (10, 9,  N'User Manual',            N'/docs/equipment/bc6800_manual.pdf',              9,  '2025-11-03'),
    (11, 10, N'User Manual',            N'/docs/equipment/cobas_6800_manual.pdf',          1,  '2025-11-03'),
    (12, 11, N'Service Manual',         N'/docs/equipment/abx_micros_es60_service.pdf',    5,  '2025-11-03'),
    (13, 12, N'Installation Checklist', N'/docs/equipment/vitros_5600_install.pdf',        2,  '2025-11-03'),
    (14, 13, N'Calibration Certificate',N'/docs/equipment/bact_alert_3d_cal.pdf',          2,  '2025-11-03'),
    (15, 14, N'User Manual',            N'/docs/equipment/liaison_xl_manual.pdf',          1,  '2025-11-03'),
    (16, 15, N'Service Manual',         N'/docs/equipment/acl_top_750_service.pdf',        9,  '2025-11-03'),
    (17, 16, N'User Manual',            N'/docs/equipment/test_analyzer_manual.pdf',       16, '2025-11-03'),
    (18, 17, N'Installation Checklist', N'/docs/equipment/facscanto_ii_install.pdf',       17, '2025-11-03');

SET IDENTITY_INSERT [dbo].[DeviceDocuments] OFF;
GO

-- ================================================================================================
-- INSERT: DeviceParts
-- ================================================================================================
SET IDENTITY_INSERT [dbo].[DeviceParts] ON;

INSERT INTO [dbo].[DeviceParts]
    ([PartID], [DeviceID], [PartName], [PartNumber], [Manufacturer], [PartCategory],
     [IsConsumable], [IsSafetyCritical], [TypicalLeadTimeDays], [MinimumStockLevel],
     [EstimatedCost], [Currency], [IsObsolete], [IsActive], [rowguid], [CreatedDate], [ModifiedDate])
VALUES
    (1,  1,  N'Optical Sensor Module',  N'OSM-C501-001',  N'Roche Diagnostics',        N'Sensor',             0, 0, 45, 2,  150000.00, N'BDT', 0, 1, N'd68dd292-521c-4350-9536-762c57da7267', '2025-11-03', '2025-11-03'),
    (2,  2,  N'Pump Motor Assembly',    N'PMA-XPT-002',   N'Siemens Healthineers',     N'Motor',              0, 0, 60, 1,  220000.00, N'BDT', 0, 1, N'9bc9f763-833f-461d-b6df-e5490f738f97', '2025-11-03', '2025-11-03'),
    (3,  3,  N'Sample Probe',           N'SP-i2000-003',  N'Abbott Laboratories',      N'Probe',              1, 0, 30, 5,   50000.00, N'BDT', 0, 1, N'728e438b-a5fd-4a6e-a493-aebcfe503201', '2025-11-03', '2025-11-03'),
    (4,  4,  N'Flow Cell',              N'FC-DxH900-004', N'Beckman Coulter',          N'Optical',            0, 0, 40, 2,  180000.00, N'BDT', 0, 1, N'dbd1f41f-60fd-4a92-9c56-a77a99d1e81f', '2025-11-03', '2025-11-03'),
    (5,  5,  N'Reagent Mixer',          N'RM-XN1000-005', N'Sysmex Corporation',       N'Mechanical',         0, 0, 50, 1,  120000.00, N'BDT', 0, 1, N'e0614eb6-9e89-4827-afe7-dd82b0b105e8', '2025-11-03', '2025-11-03'),
    (6,  6,  N'Lamp Module',            N'LM-HT5-006',    N'Thermo Fisher',            N'Optical',            0, 0, 35, 3,   80000.00, N'BDT', 0, 1, N'3b218d89-5f42-43eb-b77c-d6676aab0d2d', '2025-11-03', '2025-11-03'),
    (7,  7,  N'Injection Valve',        N'IV-V2T-007',    N'Bio-Rad',                  N'Valve',              1, 0, 40, 4,   45000.00, N'BDT', 0, 1, N'fd15ba60-2e3d-4fd2-abd5-8a8840d7b8c9', '2025-11-03', '2025-11-03'),
    (8,  8,  N'Wash Station Assembly',  N'WSA-ALT-008',   N'Abbott Laboratories',      N'Mechanical',         0, 0, 55, 1,   95000.00, N'BDT', 0, 1, N'6881af30-9885-46e5-a3f2-14aef03ae541', '2025-11-03', '2025-11-03'),
    (9,  9,  N'Aperture Bath',          N'AB-BC6800-009', N'Mindray Medical',          N'Consumable',         1, 0, 25, 6,   30000.00, N'BDT', 0, 1, N'e057b0a6-4565-42b0-be5e-d4210f136e80', '2025-11-03', '2025-11-03'),
    (10, 10, N'Pipette Tips Box',       N'PTB-C6800-010', N'Roche Diagnostics',        N'Consumable',         1, 0, 20, 10,  15000.00, N'BDT', 0, 1, N'ac101524-0214-4066-83f0-d274dbdbd49c', '2025-11-03', '2025-11-03'),
    (11, 11, N'Vacuum Pump',            N'VP-ES60-011',   N'Horiba Medical',           N'Pump',               0, 0, 45, 1,  110000.00, N'BDT', 0, 1, N'f832630b-5b69-44b2-b3ac-e6f4e271444c', '2025-11-03', '2025-11-03'),
    (12, 12, N'Barcode Reader',         N'BR-V5600-012',  N'Ortho Clinical',           N'Electronics',        0, 0, 50, 2,  135000.00, N'BDT', 0, 1, N'c5339eb8-7c0c-40f2-a8ad-e33bb3a52ea7', '2025-11-03', '2025-11-03'),
    (13, 13, N'Incubator Module',       N'IM-BA3D-013',   N'bioMerieux',              N'Temperature Control', 0, 0, 60, 1,  250000.00, N'BDT', 0, 1, N'2e86e704-2792-4c31-bc37-90c70f4456e3', '2025-11-03', '2025-11-03'),
    (14, 14, N'Pipette Assembly',       N'PA-LXL-014',    N'DiaSorin',                N'Mechanical',          0, 0, 40, 2,   75000.00, N'BDT', 0, 1, N'716ce04b-f0f0-4777-af31-204d79f3e977', '2025-11-03', '2025-11-03'),
    (15, 15, N'Cuvette Rotor',          N'CR-ACL750-015', N'Werfen Group',            N'Mechanical',          0, 0, 55, 1,  165000.00, N'BDT', 0, 1, N'4e287e0b-b898-4b99-9702-fb6c5dd051f5', '2025-11-03', '2025-11-03'),
    (16, 16, N'Test Probe',             N'TP-TB1000-016', N'Test Manufacturer',        N'Probe',              1, 0, 30, 3,   25000.00, N'BDT', 0, 1, N'b8c9d0e1-f2a3-4567-bc88-888901234518', '2025-11-03', '2025-11-03'),
    (17, 17, N'Laser Assembly',         N'LA-FCII-017',   N'Becton Dickinson',         N'Optical',            0, 0, 60, 1,  450000.00, N'BDT', 0, 1, N'c9d0e1f2-a3b4-5678-cd99-999012345629', '2025-11-03', '2025-11-03'),
    (18, 18, N'Filter Wheel',           N'FW-ENV-018',    N'PerkinElmer',              N'Optical',            0, 0, 45, 2,  120000.00, N'BDT', 0, 1, N'd0e1f2a3-b4c5-6789-de00-000123456730', '2025-11-03', '2025-11-03'),
    (19, 19, N'Detector Panel',         N'DP-DEVO-019',   N'Fujifilm Healthcare',      N'Electronics',        0, 0, 50, 1,  280000.00, N'BDT', 0, 1, N'e1f2a3b4-c5d6-7890-ef11-111234567841', '2025-11-03', '2025-11-03');

SET IDENTITY_INSERT [dbo].[DeviceParts] OFF;
GO

-- ================================================================================================
-- INSERT: DeviceReagents
-- ================================================================================================
SET IDENTITY_INSERT [dbo].[DeviceReagents] ON;

INSERT INTO [dbo].[DeviceReagents]
    ([ReagentID], [DeviceID], [ReagentName], [ReagentType], [Unit], [PackSize], [Manufacturer],
     [BatchNumber], [ManufactureDate], [ExpiryDate], [StorageConditions], [ColdChainRequired],
     [QuantityOnHand], [UnitsInStockUOM], [ReorderPoint], [LeadTimeDays],
     [IsSupplyCritical], [MSDS_Required], [IsActive], [CreatedDate], [ModifiedDate])
VALUES
    (1,  1,  N'Cobas c Chemistry Reagent Pack',      N'Reagent Kit',   N'Kit',    N'100 tests/kit',    N'Roche Diagnostics',       N'BATCH001', '2024-01-01', '2025-12-31', N'2-8 deg C',   1, 50.00, N'kits',   10.00, 90,  0, 0, 1, '2025-11-03', '2025-11-03'),
    (2,  2,  N'ADVIA Chemistry Reagent Pack',         N'Reagent Kit',   N'Kit',    N'200 tests/kit',    N'Siemens Healthineers',    N'BATCH002', '2024-02-01', '2026-01-31', N'2-8 deg C',   1, 30.00, N'kits',   8.00,  120, 0, 0, 1, '2025-11-03', '2025-11-03'),
    (3,  3,  N'Architect Immunoassay Reagent',        N'Reagent Kit',   N'Kit',    N'100 tests/kit',    N'Abbott Laboratories',     N'BATCH003', '2024-03-01', '2025-09-30', N'2-8 deg C',   1, 40.00, N'kits',   10.00, 100, 0, 0, 1, '2025-11-03', '2025-11-03'),
    (4,  4,  N'DxH Hematology Reagent Pack',          N'Reagent Kit',   N'Kit',    N'500 tests/kit',    N'Beckman Coulter',         N'BATCH004', '2024-04-01', '2025-10-31', N'2-8 deg C',   1, 25.00, N'kits',   5.00,  110, 0, 0, 1, '2025-11-03', '2025-11-03'),
    (5,  5,  N'XN Hematology Reagent Pack',           N'Reagent Kit',   N'Kit',    N'1000 tests/kit',   N'Sysmex Corporation',      N'BATCH005', '2024-05-01', '2025-11-30', N'2-8 deg C',   1, 20.00, N'kits',   5.00,  95,  0, 0, 1, '2025-11-03', '2025-11-03'),
    (6,  6,  N'Element Chemistry Reagent',            N'Reagent Kit',   N'Kit',    N'50 tests/kit',     N'Thermo Fisher',           N'BATCH006', '2024-06-01', '2025-12-31', N'2-8 deg C',   1, 60.00, N'kits',   15.00, 105, 0, 0, 1, '2025-11-03', '2025-11-03'),
    (7,  7,  N'Variant HbA1c Reagent Kit',            N'Reagent Kit',   N'Kit',    N'100 tests/kit',    N'Bio-Rad',                 N'BATCH007', '2024-07-01', '2026-01-31', N'2-8 deg C',   1, 35.00, N'kits',   10.00, 115, 0, 0, 1, '2025-11-03', '2025-11-03'),
    (8,  8,  N'Alinity Immunoassay Reagent',          N'Reagent Kit',   N'Kit',    N'200 tests/kit',    N'Abbott Laboratories',     N'BATCH008', '2024-08-01', '2026-02-28', N'2-8 deg C',   1, 45.00, N'kits',   12.00, 100, 0, 0, 1, '2025-11-03', '2025-11-03'),
    (9,  9,  N'BC-6800 Hematology Reagent',           N'Reagent Kit',   N'Kit',    N'800 tests/kit',    N'Mindray Medical',         N'BATCH009', '2024-09-01', '2025-09-30', N'2-8 deg C',   1, 30.00, N'kits',   8.00,  60,  0, 0, 1, '2025-11-03', '2025-11-03'),
    (10, 10, N'Cobas Molecular Reagent Pack',         N'Reagent Kit',   N'Kit',    N'96 tests/kit',     N'Roche Diagnostics',       N'BATCH010', '2024-10-01', '2025-10-31', N'-20 deg C',   1, 15.00, N'kits',   5.00,  90,  0, 0, 1, '2025-11-03', '2025-11-03'),
    (11, 11, N'ABX Micros ESR Reagent',               N'Reagent Kit',   N'Kit',    N'500 tests/kit',    N'Horiba Medical',          N'BATCH011', '2024-11-01', '2026-05-31', N'15-25 deg C', 0, 40.00, N'kits',   10.00, 100, 0, 0, 1, '2025-11-03', '2025-11-03'),
    (12, 12, N'Vitros Immunoassay Reagent',           N'Reagent Kit',   N'Kit',    N'100 tests/kit',    N'Ortho Clinical',          N'BATCH012', '2024-12-01', '2026-06-30', N'2-8 deg C',   1, 25.00, N'kits',   8.00,  110, 0, 0, 1, '2025-11-03', '2025-11-03'),
    (13, 13, N'BacT/ALERT Culture Media',             N'Culture Media', N'Bottle', N'100 bottles/pack', N'bioMerieux',              N'BATCH013', '2025-01-01', '2026-01-31', N'15-25 deg C', 0, 100.00,N'bottles',20.00, 105, 0, 0, 1, '2025-11-03', '2025-11-03'),
    (14, 14, N'LIAISON Immunoassay Reagent',          N'Reagent Kit',   N'Kit',    N'100 tests/kit',    N'DiaSorin',                N'BATCH014', '2025-02-01', '2026-02-28', N'2-8 deg C',   1, 30.00, N'kits',   10.00, 105, 0, 0, 1, '2025-11-03', '2025-11-03'),
    (15, 15, N'ACL TOP Hemostasis Reagent',           N'Reagent Kit',   N'Kit',    N'200 tests/kit',    N'Werfen Group',            N'BATCH015', '2025-03-01', '2026-03-31', N'2-8 deg C',   1, 35.00, N'kits',   10.00, 115, 0, 0, 1, '2025-11-03', '2025-11-03'),
    (16, 16, N'Test Reagent Kit',                     N'Reagent Kit',   N'Kit',    N'100 tests/kit',    N'Test Manufacturer',       N'BATCH016', '2025-10-01', '2026-09-30', N'2-8 deg C',   1, 20.00, N'kits',   5.00,  30,  0, 0, 1, '2025-11-03', '2025-11-03'),
    (17, 17, N'Flow Cytometry Antibody',              N'Antibody',      N'Vial',   N'50 tests/vial',    N'Becton Dickinson',        N'BATCH017', '2025-09-01', '2026-08-31', N'2-8 deg C',   1, 15.00, N'vials',  5.00,  45,  1, 0, 1, '2025-11-03', '2025-11-03'),
    (18, 18, N'EnVision Detection Kit',               N'Detection Kit', N'Kit',    N'500 tests/kit',    N'PerkinElmer',             N'BATCH018', '2025-08-01', '2026-07-31', N'-20 deg C',   1, 10.00, N'kits',   3.00,  60,  0, 0, 1, '2025-11-03', '2025-11-03'),
    (19, 19, N'DR Detector Cleaning Kit',             N'Cleaning',      N'Kit',    N'1 kit',            N'Fujifilm Healthcare',     N'BATCH019', '2025-07-01', '2026-06-30', N'15-25 deg C', 0, 25.00, N'kits',   5.00,  30,  0, 0, 1, '2025-11-03', '2025-11-03');

SET IDENTITY_INSERT [dbo].[DeviceReagents] OFF;
GO

-- ================================================================================================
-- INSERT: MaintenanceRecords
-- ================================================================================================
SET IDENTITY_INSERT [dbo].[MaintenanceRecords] ON;

INSERT INTO [dbo].[MaintenanceRecords]
    ([MaintenanceID], [InstitutionDeviceID], [ComplaintID], [PerformedByEmployeeID], [ContactPersonID],
     [WorkOrderNumber], [ServiceProvider], [MaintenanceDate], [MaintenanceType], [ServiceContractType],
     [IssuesFound], [SolutionProvided], [PartsCost], [LaborHours], [TravelCost], [ServiceCost],
     [MaintenanceResult], [NextScheduledDate],
     [rowguid], [CreatedDate], [ModifiedDate])
VALUES
    (1,  1,  3,    2,  1,  N'WO-001', N'Roche Service',        '2025-01-11', N'Corrective', N'Warranty', N'Sensor malfunction E502',          N'Replaced optical sensor',          150000.00, 2.50, 5000.00,  155000.00, N'Success', '2025-04-11', N'5bb7268c-20ef-4e86-8f69-f4516c2bebb3', '2025-11-03', '2025-11-03'),
    (2,  2,  4,    2,  3,  N'WO-002', N'Siemens Service',      '2025-02-12', N'Preventive', N'AMC',      N'Routine maintenance',               N'Cleaned, calibrated, tested',      0.00,      4.00, 4000.00,  4000.00,   N'Success', '2025-05-12', N'168d5917-4917-4d55-aa6b-a2127f944035', '2025-11-03', '2025-11-03'),
    (3,  3,  5,    5,  5,  N'WO-003', N'Abbott Service',       '2025-01-05', N'Corrective', N'Warranty', N'System initialization failure',     N'Updated firmware, reset system',   0.00,      3.00, 3000.00,  3000.00,   N'Success', '2025-04-05', N'3c1f0caf-5ace-4ef9-b451-7373ef6ee09d', '2025-11-03', '2025-11-03'),
    (4,  4,  6,    5,  6,  N'WO-004', N'Beckman Service',      '2025-01-08', N'Calibration',N'AMC',      N'Annual calibration',                N'Calibrated all parameters',        0.00,      2.00, 2000.00,  2000.00,   N'Success', '2026-01-08', N'fe711ee5-6b8b-472b-90b1-ee7c7a227de5', '2025-11-03', '2025-11-03'),
    (5,  5,  7,    2,  7,  N'WO-005', N'Sysmex Service',       '2025-01-10', N'Corrective', N'Warranty', N'Probe blockage',                    N'Cleaned and replaced probe',       50000.00,  2.00, 5000.00,  55000.00,  N'Success', '2025-04-10', N'49c09e41-94c1-4ea1-a285-384988228a4a', '2025-11-03', '2025-11-03'),
    (6,  6,  NULL, 9,  8,  N'WO-006', N'Thermo Service',       '2025-01-15', N'Preventive', N'AMC',      N'Quarterly maintenance',             N'All systems checked',              0.00,      3.50, 3500.00,  3500.00,   N'Success', '2025-04-15', N'88176d20-8fe1-443e-a708-035580316b78', '2025-11-03', '2025-11-03'),
    (7,  7,  9,    9,  9,  N'WO-007', N'BioRad Service',       '2025-01-18', N'Corrective', N'AMC',      N'Mixer motor noise',                 N'Lubricated motor bearings',        0.00,      1.50, 2000.00,  2000.00,   N'Success', '2025-04-18', N'a2946af5-7329-4a04-916a-2b705b802e78', '2025-11-03', '2025-11-03'),
    (8,  8,  NULL, 2,  10, N'WO-008', N'Abbott Service',       '2025-01-20', N'Preventive', N'Warranty', N'Routine check',                     N'All parameters normal',            0.00,      3.00, 4000.00,  4000.00,   N'Success', '2025-04-20', N'7110fb31-4255-45b3-83c0-572e06e9a5f3', '2025-11-03', '2025-11-03'),
    (9,  9,  11,   2,  11, N'WO-009', N'Mindray Service',      '2025-01-22', N'Corrective', N'AMC',      N'Flow cell contamination',           N'Replaced flow cell',               180000.00, 2.50, 3000.00,  183000.00, N'Success', '2025-04-22', N'c88c0a84-5dfd-477a-8b03-da33c70cabcb', '2025-11-03', '2025-11-03'),
    (10, 10, NULL, 2,  12, N'WO-010', N'Roche Service',        '2025-01-25', N'Preventive', N'Warranty', N'Monthly maintenance',               N'System checked and cleaned',       0.00,      4.00, 5000.00,  5000.00,   N'Success', '2025-02-25', N'b9a9c018-d5c1-4b1c-83ac-0450bbb346fe', '2025-11-03', '2025-11-03'),
    (11, 11, 13,   2,  13, N'WO-011', N'Horiba Service',       '2025-01-28', N'Corrective', N'AMC',      N'Vacuum pump weak',                  N'Replaced vacuum pump',             110000.00, 2.00, 3000.00,  113000.00, N'Success', '2025-04-28', N'19070cb2-febd-4849-b6d7-c8d32c7bd458', '2025-11-03', '2025-11-03'),
    (12, 12, NULL, 9,  14, N'WO-012', N'Ortho Service',        '2025-02-01', N'Preventive', N'Warranty', N'Quarterly maintenance',             N'All functions normal',             0.00,      3.00, 3500.00,  3500.00,   N'Success', '2025-05-01', N'94cb83a5-cb06-4308-b8d9-4178a6c82175', '2025-11-03', '2025-11-03'),
    (13, 13, 15,   9,  15, N'WO-013', N'bioMerieux Service',   '2025-02-03', N'Corrective', N'Warranty', N'Barcode reader error',              N'Replaced barcode reader',          135000.00, 2.00, 4000.00,  139000.00, N'Success', '2025-05-03', N'5d19ed8f-5195-42d8-8b0a-91a431ef1942', '2025-11-03', '2025-11-03'),
    (14, 14, 16,   5,  11, N'WO-014', N'DiaSorin Service',     '2025-02-05', N'Preventive', N'AMC',      N'Semi-annual maintenance',           N'System calibrated',                0.00,      3.50, 3000.00,  3000.00,   N'Success', '2025-08-05', N'0fd9b1a2-a343-455d-ac09-cebc3b5e3231', '2025-11-03', '2025-11-03'),
    (15, 15, 17,   5,  12, N'WO-015', N'Werfen Service',       '2025-02-08', N'Corrective', N'Warranty', N'Temperature fluctuation',           N'Recalibrated incubator module',    0.00,      2.50, 3500.00,  3500.00,   N'Success', '2025-05-08', N'0e4a5105-49de-4526-95e0-219d53b8c2ea', '2025-11-03', '2025-11-03'),
    (16, 1,  NULL, 2,  1,  N'WO-016', N'Roche Service',        '2025-03-20', N'Preventive', N'AMC',      N'Routine inspection',                N'All systems normal',               NULL,      4.00, 4000.00,  4000.00,   N'Success', '2025-06-20', N'e1be6e3a-cf66-4cad-916f-19ce127954f3', '2025-11-03', '2025-11-03'),
    (17, 16, 19,   16, 19, N'WO-017', N'Test Service',         '2025-04-01', N'Corrective', N'Warranty', N'Startup error',                     N'Replaced test probe',              25000.00,  1.50, 2000.00,  27000.00,  N'Success', '2025-07-01', N'f2a3b4c5-d6e7-8901-fa11-111234567852', '2025-11-03', '2025-11-03'),
    (18, 17, 20,   17, 17, N'WO-018', N'BD Service',           '2025-04-05', N'Preventive', N'AMC',      N'Routine calibration',               N'Calibrated flow cytometer',        0.00,      3.00, 3000.00,  3000.00,   N'Success', '2025-10-05', N'a3b4c5d6-e7f8-9012-ab22-222345678963', '2025-11-03', '2025-11-03'),
    (19, 18, 21,   18, 18, N'WO-019', N'PerkinElmer Service',  '2025-04-10', N'Corrective', N'Warranty', N'Software bug',                      N'Software updated',                 0.00,      2.00, 2000.00,  2000.00,   N'Success', '2025-07-10', N'b4c5d6e7-f8a9-0123-bc33-333456789074', '2025-11-03', '2025-11-03'),
    (20, 19, NULL, 19, NULL,N'WO-020', N'Fujifilm Service',    '2025-04-15', N'Preventive', N'AMC',      N'Routine check',                     N'Detector cleaned',                 0.00,      2.50, 2500.00,  2500.00,   N'Success', '2025-10-15', N'c5d6e7f8-a9b0-1234-cd44-444567890185', '2025-11-03', '2025-11-03');

SET IDENTITY_INSERT [dbo].[MaintenanceRecords] OFF;
GO

-- ================================================================================================
-- INSERT: MaintenanceDeviceParts
-- ================================================================================================
SET IDENTITY_INSERT [dbo].[MaintenanceDeviceParts] ON;

INSERT INTO [dbo].[MaintenanceDeviceParts]
    ([MaintenanceDevicePartID], [MaintenanceID], [PartID], [Quantity], [UnitCost])
VALUES
    (1,  1,  1,  1.00, 150000.00),
    (2,  5,  3,  2.00,  50000.00),
    (3,  9,  4,  1.00, 180000.00),
    (4,  11, 11, 1.00, 110000.00),
    (5,  13, 12, 1.00, 135000.00),
    (6,  1,  10, 5.00,  15000.00),
    (7,  5,  10, 3.00,  15000.00),
    (8,  9,  9,  2.00,  30000.00),
    (9,  11, 15, 1.00, 165000.00),
    (10, 13, 14, 1.00,  75000.00),
    (11, 17, 16, 1.00,  25000.00);

SET IDENTITY_INSERT [dbo].[MaintenanceDeviceParts] OFF;
GO

-- ================================================================================================
-- INSERT: StockMovements
-- ================================================================================================
SET IDENTITY_INSERT [dbo].[StockMovements] ON;

INSERT INTO [dbo].[StockMovements]
    ([StockMovementID], [ItemType], [ItemID], [Quantity], [MovementType], [Reference], [MovementDate], [PerformedByEmployeeID])
VALUES
    (1,  N'Reagent', 1,  20.00, N'Receipt', N'PO-REG-001',       '2025-11-03', 1),
    (2,  N'Reagent', 1,  -5.00, N'Issue',   N'INST-1000-USAGE',  '2025-11-03', 1),
    (3,  N'Part',    1,   3.00, N'Receipt', N'PO-PART-001',      '2025-11-03', 2),
    (4,  N'Part',    1,  -1.00, N'Issue',   N'WO-001',           '2025-11-03', 2),
    (5,  N'Reagent', 2,  15.00, N'Receipt', N'PO-REG-002',       '2025-11-03', 1),
    (6,  N'Reagent', 3,  25.00, N'Receipt', N'PO-REG-003',       '2025-11-03', 3),
    (7,  N'Part',    3,  10.00, N'Receipt', N'PO-PART-002',      '2025-11-03', 2),
    (8,  N'Part',    3,  -2.00, N'Issue',   N'WO-005',           '2025-11-03', 2),
    (9,  N'Reagent', 4,  10.00, N'Receipt', N'PO-REG-004',       '2025-11-03', 4),
    (10, N'Part',    4,   5.00, N'Receipt', N'PO-PART-003',      '2025-11-03', 5),
    (11, N'Part',    4,  -1.00, N'Issue',   N'WO-009',           '2025-11-03', 2),
    (12, N'Reagent', 5,  12.00, N'Receipt', N'PO-REG-005',       '2025-11-03', 5),
    (13, N'Reagent', 6,  10.00, N'Receipt', N'PO-REG-006',       '2025-11-03', 1),
    (14, N'Reagent', 6,  -3.00, N'Issue',   N'INST-1005-USAGE',  '2025-11-03', 1),
    (15, N'Part',    16,  5.00, N'Receipt', N'PO-PART-016',      '2025-11-03', 16),
    (16, N'Part',    16, -1.00, N'Issue',   N'WO-017',           '2025-11-03', 16),
    (17, N'Reagent', 17,  8.00, N'Receipt', N'PO-REG-017',       '2025-11-03', 17),
    (18, N'Reagent', 17, -2.00, N'Issue',   N'INST-1016-USAGE',  '2025-11-03', 17);

SET IDENTITY_INSERT [dbo].[StockMovements] OFF;
GO

-- ================================================================================================
-- INSERT: SurveyQuestions
-- ================================================================================================
SET IDENTITY_INSERT [dbo].[SurveyQuestions] ON;

INSERT INTO [dbo].[SurveyQuestions]
    ([QuestionID], [QuestionText], [QuestionCategory], [QuestionType], [AppliesTo],
     [IsRequired], [DisplayOrder], [IsActive], [CreatedDate], [ModifiedDate])
VALUES
    (1,  N'What is your overall satisfaction with current equipment?',       N'Satisfaction',    N'Rating',          N'Equipment',   1, 1,  1, '2025-11-03', '2025-11-03'),
    (2,  N'Are you planning to purchase new equipment in the next 6 months?',N'Purchase Intent', N'Yes/No',          N'Institution', 1, 2,  1, '2025-11-03', '2025-11-03'),
    (3,  N'How would you rate our service response time?',                   N'Satisfaction',    N'Rating',          N'General',     1, 3,  1, '2025-11-03', '2025-11-03'),
    (4,  N'What is your monthly test volume?',                               N'Capacity',        N'Text',            N'Institution', 0, 4,  1, '2025-11-03', '2025-11-03'),
    (5,  N'How satisfied are you with technical support?',                   N'Satisfaction',    N'Rating',          N'General',     1, 5,  1, '2025-11-03', '2025-11-03'),
    (6,  N'Which departments need equipment upgrades?',                      N'Purchase Intent', N'Multiple Choice', N'Institution', 0, 6,  1, '2025-11-03', '2025-11-03'),
    (7,  N'What is your estimated annual budget for equipment?',             N'Purchase Intent', N'Text',            N'Institution', 0, 7,  1, '2025-11-03', '2025-11-03'),
    (8,  N'How do you rate product quality?',                                N'Satisfaction',    N'Rating',          N'Equipment',   1, 8,  1, '2025-11-03', '2025-11-03'),
    (9,  N'Are you using equipment from other suppliers?',                   N'Competition',     N'Yes/No',          N'General',     0, 9,  1, '2025-11-03', '2025-11-03'),
    (10, N'What improvements would you suggest?',                           N'Feedback',        N'Text',            N'General',     0, 10, 1, '2025-11-03', '2025-11-03'),
    (11, N'How likely are you to recommend us?',                            N'Satisfaction',    N'Rating',          N'General',     1, 11, 1, '2025-11-03', '2025-11-03'),
    (12, N'What are your main challenges with current equipment?',          N'Feedback',        N'Text',            N'Equipment',   0, 12, 1, '2025-11-03', '2025-11-03'),
    (13, N'When do you plan your next equipment purchase?',                 N'Purchase Intent', N'Multiple Choice', N'Institution', 0, 13, 1, '2025-11-03', '2025-11-03'),
    (14, N'How satisfied are you with reagent availability?',               N'Satisfaction',    N'Rating',          N'Reagent',     1, 14, 1, '2025-11-03', '2025-11-03'),
    (15, N'What training needs do you have?',                               N'Feedback',        N'Text',            N'General',     0, 15, 1, '2025-11-03', '2025-11-03'),
    (16, N'How satisfied are you with our training programs?',              N'Satisfaction',    N'Rating',          N'General',     1, 16, 1, '2025-11-03', '2025-11-03'),
    (17, N'Do you have any future expansion plans?',                        N'Purchase Intent', N'Yes/No',          N'Institution', 0, 17, 1, '2025-11-03', '2025-11-03'),
    (18, N'What new technologies are you interested in?',                   N'Competition',     N'Text',            N'General',     0, 18, 1, '2025-11-03', '2025-11-03'),
    (19, N'How often do you require emergency service?',                    N'Service',         N'Multiple Choice', N'General',     1, 19, 1, '2025-11-03', '2025-11-03'),
    (20, N'Please rate our overall partnership.',                           N'Satisfaction',    N'Rating',          N'General',     1, 20, 1, '2025-11-03', '2025-11-03');

SET IDENTITY_INSERT [dbo].[SurveyQuestions] OFF;
GO

-- ================================================================================================
-- INSERT: SurveyResponses
-- ================================================================================================
SET IDENTITY_INSERT [dbo].[SurveyResponses] ON;

INSERT INTO [dbo].[SurveyResponses]
    ([ResponseID], [VisitID], [QuestionID], [ContactPersonID], [SurveyType],
     [RespondentName], [RespondentRole], [ResponseText], [ResponseRating],
     [IsVerified], [CreatedDate])
VALUES
    (1,  1,    1,  1,    N'Visit',  N'Dr. Abdul Karim',        N'Head of Dept',        N'Very satisfied with equipment performance',   8,    0, '2025-11-03'),
    (2,  1,    2,  1,    N'Visit',  N'Dr. Abdul Karim',        N'Head of Dept',        N'Yes, planning hematology analyzer',           NULL, 0, '2025-11-03'),
    (3,  2,    3,  3,    N'Visit',  N'Dr. Shahana Parveen',    N'Lab Director',        N'Good response time overall',                  7,    0, '2025-11-03'),
    (4,  3,    1,  5,    N'Visit',  N'Dr. Mohammad Ali',       N'Chief Pathologist',   N'Excellent equipment reliability',             9,    0, '2025-11-03'),
    (5,  4,    5,  6,    N'Visit',  N'Kamal Ahmed',            N'Procurement Manager', N'Technical support is adequate',               7,    0, '2025-11-03'),
    (6,  5,    1,  7,    N'Visit',  N'Prof. Dr. Nazma Khatun', N'Director',            N'Satisfied with current setup',                8,    0, '2025-11-03'),
    (7,  6,    11, 8,    N'Visit',  N'Dr. Hafizur Rahman',     N'Associate Professor', N'Would recommend to others',                   9,    0, '2025-11-03'),
    (8,  7,    8,  9,    N'Visit',  N'Sadiqul Alam',           N'Admin Officer',       N'Product quality is good',                     8,    0, '2025-11-03'),
    (9,  NULL, 2,  NULL, N'Online', N'Anonymous User',         N'Lab Technician',      N'Considering purchase in 3 months',            NULL, 0, '2025-11-03'),
    (10, 8,    1,  10,   N'Visit',  N'Farhana Islam',          N'Purchase Manager',    N'Generally satisfied',                         7,    0, '2025-11-03'),
    (11, 9,    14, 11,   N'Visit',  N'Dr. Shamsul Hoque',      N'Medical Director',    N'Reagent supply is consistent',                8,    0, '2025-11-03'),
    (12, 10,   6,  12,   N'Visit',  N'Belal Hossain',          N'Operations Manager',  N'Need upgrades in biochemistry',               NULL, 0, '2025-11-03'),
    (13, 11,   15, 13,   N'Visit',  N'Dr. Tahmina Akter',      N'Lab Consultant',      N'Need training on advanced features',          NULL, 0, '2025-11-03'),
    (14, 12,   1,  14,   N'Visit',  N'Prof. Dr. Iqbal Mahmud', N'Research Director',   N'Equipment meets our research needs',          9,    0, '2025-11-03'),
    (15, 13,   12, 15,   N'Visit',  N'Nurul Huda',             N'Store Manager',       N'Occasional calibration issues',               NULL, 0, '2025-11-03'),
    (16, 17,   1,  19,   N'Visit',  N'Fahmida Akhter',         N'Admin Officer',       N'Satisfactory equipment performance',          7,    0, '2025-11-03'),
    (17, 18,   5,  17,   N'Visit',  N'Shirin Sultana',         N'Lab Director',        N'Technical support is responsive',             8,    0, '2025-11-03'),
    (18, 19,   3,  18,   N'Visit',  N'Rashed Khan',            N'Purchase Manager',    N'Service response time is good',               8,    0, '2025-11-03'),
    (19, 20,   8,  NULL, N'Visit',  N'Fujifilm Staff Member',  N'Radiology Tech',      N'Product quality meets expectations',          8,    0, '2025-11-03'),
    (20, 16,   14, 16,   N'Visit',  N'Test Contact Person',    N'Manager',             N'Reagents are always available',               9,    0, '2025-11-03');

SET IDENTITY_INSERT [dbo].[SurveyResponses] OFF;
GO

-- ================================================================================================
-- IDENTITY / AUTHENTICATION DATA (AspNet* tables)
-- ================================================================================================
INSERT INTO [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp])
VALUES
    (N'r0000001-0000-0000-0000-000000000001', N'Admin',   N'ADMIN',   N'E9118D89-EC8C-4E05-B3CD-0EF3F51D8D7F'),
    (N'r0000002-0000-0000-0000-000000000002', N'Manager', N'MANAGER', N'C111A4C9-31C1-4475-9B01-E5FACB3AE577'),
    (N'r0000003-0000-0000-0000-000000000003', N'Viewer',  N'VIEWER',  N'761D2566-F3F4-4742-85C5-5E6A7DE02903');
GO

INSERT INTO [dbo].[AspNetUsers]
    ([Id], [FullName], [Department], [CreatedAt],
     [UserName], [NormalizedUserName], [Email], [NormalizedEmail],
     [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp],
     [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled],
     [LockoutEnd], [LockoutEnabled], [AccessFailedCount])
VALUES
    (N'a1111111-1111-1111-1111-111111111111',
     N'System Administrator', N'IT', '2025-01-01 00:00:00',
     N'admin@kyc.demo', N'ADMIN@KYC.DEMO',
     N'admin@kyc.demo', N'ADMIN@KYC.DEMO',
     1,
     N'AQAAAAEAAYagAAAAEKGyw9Tl9qe4ydDh8qO0xdYfm6PJj+g8/AHeiK4wH1qMGllkloG3srdQ7ktxzmCjrg==',
     N's1111111-1111-1111-1111-111111111111',
     N'c1111111-1111-1111-1111-111111111111',
     NULL, 0, 0, NULL, 1, 0),
    (N'a2222222-2222-2222-2222-222222222222',
     N'Demo Manager', N'Operations', '2025-01-01 00:00:00',
     N'manager@kyc.demo', N'MANAGER@KYC.DEMO',
     N'manager@kyc.demo', N'MANAGER@KYC.DEMO',
     1,
     N'AQAAAAEAAYagAAAAELLD1OX2p7jJ0OHyo7TF1uck4AUKL2u3a98m5CziRhBNFle+LhavuXys4WifZrUyjQ==',
     N's2222222-2222-2222-2222-222222222222',
     N'c2222222-2222-2222-2222-222222222222',
     NULL, 0, 0, NULL, 1, 0),
    (N'a3333333-3333-3333-3333-333333333333',
     N'Demo Viewer', N'Reporting', '2025-01-01 00:00:00',
     N'viewer@kyc.demo', N'VIEWER@KYC.DEMO',
     N'viewer@kyc.demo', N'VIEWER@KYC.DEMO',
     1,
     N'AQAAAAEAAYagAAAAEMPU5fanuMnQ4fKjtMXW5/jyB4x0huyvRiQHtnm8sCnW73+78wLFJ6R4iCRBkNd+pQ==',
     N's3333333-3333-3333-3333-333333333333',
     N'c3333333-3333-3333-3333-333333333333',
     NULL, 0, 0, NULL, 1, 0),
    (N'a4444444-4444-4444-4444-444444444444',
     N'Demo Field Engineer', N'Technical', '2025-01-01 00:00:00',
     N'engineer@kyc.demo', N'ENGINEER@KYC.DEMO',
     N'engineer@kyc.demo', N'ENGINEER@KYC.DEMO',
     1,
     N'AQAAAAEAAYagAAAAENTl9qe4ydDh8qO0xdbn+Kn7ypmfZDj4TKwTdQ4ZDsMkUyJgwOrBX4JblVYd8A2hcA==',
     N's4444444-4444-4444-4444-444444444444',
     N'c4444444-4444-4444-4444-444444444444',
     NULL, 0, 0, NULL, 1, 0);
GO

INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId])
VALUES
    (N'a1111111-1111-1111-1111-111111111111', N'r0000001-0000-0000-0000-000000000001'),
    (N'a2222222-2222-2222-2222-222222222222', N'r0000002-0000-0000-0000-000000000002'),
    (N'a3333333-3333-3333-3333-333333333333', N'r0000003-0000-0000-0000-000000000003'),
    (N'a4444444-4444-4444-4444-444444444444', N'r0000002-0000-0000-0000-000000000002');
GO

INSERT INTO [dbo].[AspNetRoleClaims] ([RoleId], [ClaimType], [ClaimValue])
VALUES
    (N'r0000001-0000-0000-0000-000000000001', N'Permission', N'CanExportReports'),
    (N'r0000001-0000-0000-0000-000000000001', N'Permission', N'CanViewReports'),
    (N'r0000001-0000-0000-0000-000000000001', N'Permission', N'CanManageUsers'),
    (N'r0000001-0000-0000-0000-000000000001', N'Permission', N'CanDeleteRecords'),
    (N'r0000002-0000-0000-0000-000000000002', N'Permission', N'CanExportReports'),
    (N'r0000002-0000-0000-0000-000000000002', N'Permission', N'CanViewReports'),
    (N'r0000003-0000-0000-0000-000000000003', N'Permission', N'CanViewReports');
GO

INSERT INTO [dbo].[AspNetUserClaims] ([UserId], [ClaimType], [ClaimValue])
VALUES
    (N'a1111111-1111-1111-1111-111111111111', N'Department', N'IT'),
    (N'a2222222-2222-2222-2222-222222222222', N'Department', N'Operations'),
    (N'a3333333-3333-3333-3333-333333333333', N'Department', N'Reporting'),
    (N'a4444444-4444-4444-4444-444444444444', N'Department', N'Technical');
GO