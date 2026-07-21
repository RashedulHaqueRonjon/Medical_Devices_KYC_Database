# Medical Devices KYC Database

A comprehensive SQL Server database system for managing Know Your Customer (KYC) data, medical devices, suppliers, institutions, and service operations in the healthcare sector.

## Overview

The Medical Devices KYC Database is an enterprise-grade database solution designed to support healthcare organizations, medical device suppliers, and service providers in managing complex operations related to medical equipment, institutional relationships, service contracts, and compliance tracking.

### Key Features

- **Supplier Management**: Centralized tracking of medical device suppliers with compliance information (ISO 13485 certification)
- **Institution Management**: Comprehensive database of healthcare institutions with classification and ownership details
- **Device Inventory**: Track medical devices, their specifications, maintenance, and deployment across institutions
- **Employee & Contact Management**: Manage field teams, contact persons, and institutional relationships
- **Service Operations**: Track maintenance records, complaints, warranty claims, and service contracts
- **Survey & Feedback System**: Collect and manage customer surveys and feedback
- **User Authentication**: ASP.NET Identity integration for secure role-based access control
- **Audit Trail**: Track creation and modification timestamps for all records

## Database Schema

### Core Tables

#### Master Data Tables
- **Suppliers**: Medical device manufacturers and distributors with contact information and compliance status
- **Employees**: Staff members with roles, territories, and contact details
- **Institutions**: Healthcare facilities (hospitals, diagnostic centers, research institutes) with classification
- **ContactPersons**: Key contacts at institutions for business relationships
- **Devices**: Medical equipment catalog with specifications and technical details

#### Operations Tables
- **InstitutionDevices**: Device deployment tracking at specific institutions with serial numbers and warranty
- **Visits**: Field visits to institutions for surveys, installations, and service calls
- **ComplaintRequests**: Service requests and equipment issues with ticket tracking
- **MaintenanceRecords**: Service and maintenance history with technician information
- **MaintenanceDeviceParts**: Parts used during maintenance operations

#### Support Tables
- **DeviceDocuments**: User manuals, certificates, and technical documentation
- **DeviceParts**: Spare parts inventory with supplier and stock level information
- **DeviceReagents**: Consumable reagents and supplies with expiry tracking
- **StockMovements**: Inventory transactions for parts and reagents

#### Feedback & Survey Tables
- **SurveyQuestions**: Configurable survey templates with question categories
- **SurveyResponses**: Customer feedback collection and ratings

#### Authentication Tables (ASP.NET Identity)
- **AspNetUsers**: Application users with full name and department
- **AspNetRoles**: Role definitions (Admin, Manager, Viewer)
- **AspNetUserRoles**: User-role mappings
- **AspNetUserClaims**: User-specific permissions
- **AspNetRoleClaims**: Role-specific permissions

## Database Statistics

- **20 Suppliers** with international presence
- **19 Employees** across various departments and territories
- **19 Healthcare Institutions** including government and private facilities
- **19 Unique Device Types** covering diagnostic, hematology, immunoassay, and molecular systems
- **19 Institution-Device Deployments** with warranty and service contracts
- **20 Field Visits** including surveys, installations, and training
- **19 Complaint Tickets** with escalation tracking
- **20 Survey Questions** across multiple categories

## Key Views

### vwInstitutionSummary
Provides comprehensive institution overview including:
- Total contacts per institution
- Total instruments and machines
- Total visits and last visit date
- Active status

### vwInstrumentInventory
Equipment distribution analysis:
- Installations per institution
- Total units deployed
- BCOC-supplied units tracking

### vwUsersWithRoles
User access management:
- User details with roles
- Department and lockout status
- Email and verification status

## Stored Procedures

Core procedures for common operations:
- `sp_Institutions_Create` - Create new institution records
- Additional procedures for data management and reporting

## Data Relationships

### Key Relationships
- **Suppliers → Devices**: One-to-Many (supplier manufactures multiple devices)
- **Devices → InstitutionDevices**: One-to-Many (device deployed at multiple institutions)
- **Institutions → InstitutionDevices**: One-to-Many (institution has multiple devices)
- **Employees → Visits**: One-to-Many (employee conducts multiple visits)
- **Institutions → ComplaintRequests**: One-to-Many (institution raises multiple complaints)
- **InstitutionDevices → MaintenanceRecords**: One-to-Many (maintenance history tracking)
- **DeviceParts → MaintenanceDeviceParts**: Many-to-Many (parts used in maintenance)

## Database Indexes

Performance optimized with strategic indexes on:
- Employee territories
- Institution location and type
- Contact person lookups
- Device department and manufacturer
- Maintenance and complaint status
- Visit dates

## Constraints & Validation

### Check Constraints
- Institution types: Government, Private, NGO, International
- Business ownership types: Government, Corporate, Shared Partnership, Proprietorship
- Institution classifications: Class A, B, C
- Contact types: Key Person, Doctor, Consultant, Purchase Officer, Lab Manager, Other
- Device types: Automatic, Semi-Automatic, Manual
- Survey types: Visit, Online
- Response ratings: 1-10 scale

### Default Constraints
- Suppliers default to active status with new GUIDs and current timestamps
- Institutions default country: Bangladesh
- Visit mode defaults to Onsite
- Complaint priority defaults to Medium
- Survey default applies to General category

## Entity-Relationship Diagram (ERD)

The repository includes comprehensive ERDs:
- `Medical_Devices_KYC_Database_ERD.png` - Main database schema
- `Medical_Devices_KYC_Database_ERD_Survey.png` - Survey system details

## Installation & Setup

### Prerequisites
- SQL Server 2016 or higher
- SQL Server Management Studio (SSMS)
- Appropriate permissions to create databases

### Installation Steps

1. **Create Database**
   ```sql
   -- Run the structure script
   Medical_Devices_KYC_Database_Structure_SQL_Script.sql
   ```

2. **Insert Sample Data**
   ```sql
   -- Run the data insertion script
   Medical_Devices_KYC_Database_Data_Insertion_SQL_Script.sql
   ```

3. **Verify Installation**
   - Check database tables are created
   - Verify sample data population
   - Test views and stored procedures

## Sample Data

The database includes comprehensive sample data:
- International suppliers (Roche, Siemens, Abbott, Beckman, Sysmex, etc.)
- Bangladesh-based healthcare institutions
- 19 employees across different departments and territories
- 20 field visits with various purposes (surveys, installations, training)
- 19 complaint tickets with different priorities and statuses
- Stock movements and maintenance records
- Survey responses and feedback

## Usage Scenarios

### Supplier Management
- Track ISO 13485 compliance
- Monitor supplier performance
- Manage local representatives

### Equipment Inventory
- Deploy and track devices at institutions
- Monitor warranty and service contracts
- Maintain spare parts and reagent stock

### Field Operations
- Schedule and record visits
- Log service calls and installations
- Track training sessions

### Complaint Management
- Register equipment issues and service requests
- Monitor SLA targets
- Track resolution and escalation

### Business Intelligence
- Analyze institution summary and equipment distribution
- Generate compliance reports
- Track service metrics

## Licensing

MIT License - See LICENSE file for details

## File Structure

```
Medical_Devices_KYC_Database/
├── README.md (this file)
├── LICENSE
├── Medical_Devices_KYC_Database_Structure_SQL_Script.sql
├── Medical_Devices_KYC_Database_Data_Insertion_SQL_Script.sql
├── Medical_Devices_KYC_Database_ERD.png
└── Medical_Devices_KYC_Database_ERD_Survey.png
```

## Contact & Support

For questions or issues regarding this database schema, please refer to the documentation or contact the repository maintainer.

---

**Last Updated**: November 3, 2025  
**Version**: 1.0  
**Database Language**: T-SQL (SQL Server)
