# azure-sql-tde-keyvault-logicapp
End-to-end SQL encryption and monitoring on Azure

# Azure SQL TDE & Monitoring Project

**Secure Azure SQL with TDE, Key Vault, and real-time transaction alerts.**

This project demonstrates the implementation of a secure Azure SQL Server environment with:
- Transparent Data Encryption (TDE) using Azure Key Vault
- Microsoft Defender for SQL enabled for advanced threat protection
- Role-based access for both system-assigned and user-managed identities
- Logic App for monitoring transactions and triggering email alerts for high-value operations

---

## Features
- **Transparent Data Encryption (TDE):** Data-at-rest encryption using a Key Vault key
- **Key Vault Integration:** Securely stores and manages encryption keys
- **Microsoft Defender for SQL:** Provides advanced threat protection and alerts
- **Logic App Monitoring:** Sends notifications when a transaction exceeds a set threshold
- **Role-Based Access Control:** Grants necessary permissions for automation and administrators

---

## Prerequisites
- Active Azure subscription
- Contributor or Owner role for resource deployment
- Existing Azure Key Vault (or permissions to create one)
- Email account for receiving transaction alerts
- Azure Logic App permissions

---

## Architecture Overview
1. **SQL Server & Database**
   - Created via Azure Portal
   - TDE enabled using Key Vault
2. **Key Vault**
   - Assign `Key Vault Crypto User` to SQL Server system-assigned identity
   - Assign `Key Vault Administrator` to deployment user
3. **Microsoft Defender for SQL**
   - Enabled on the SQL Server resource
   - Configured to detect suspicious activities
4. **Logic App**
   - Triggered on SQL database transactions
   - Condition-based email alerts for high-value transactions

---

## Deployment Steps
Refer to the **SOP Document** (`SQL_Project_SOP.docx`) for step-by-step instructions.

### Quick Summary:
1. Create SQL Server and database in Azure.
2. Enable TDE and configure Key Vault integration.
3. Assign roles for system-assigned managed identity and admin user.
4. Enable Microsoft Defender for SQL.
5. Deploy Logic App for monitoring and set threshold values.
6. Test with sample transactions.

---

## Folder Structure
```
azure-sql-tde-monitoring/
│
├── diagrams/
│   └── architecture.png
│
├── scripts/
│   └── sample-transactions.sql
│
├── logicapp/
│   └── transaction-alert-logicapp.json
│
├── docs/
│   ├── SQL_Project_SOP.docx
│   └── SQL_Project_README.docx
│
└── README.md
```

---

## How It Works
- SQL database encrypts data using a TDE key from Key Vault.
- Logic App queries transaction logs at set intervals.
- When a transaction exceeds the defined threshold, an email alert is triggered.
- Defender continuously monitors the SQL environment for threats.

---

## Future Enhancements
- Add Azure Monitor integration for advanced analytics
- Automate deployment with ARM/Bicep templates or Terraform
- Support for multiple thresholds and recipients
