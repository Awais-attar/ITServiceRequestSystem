# IT Service Request Management System

## Overview

The IT Service Request Management System is a Salesforce-based project designed to organize and manage IT service requests. It provides a foundation for tracking requests and implementing business rules using Salesforce metadata and Apex.

## Objectives

- Organize IT service request records in Salesforce.
- Define relationships between employees and service requests.
- Implement request-related business logic using Apex triggers.
- Maintain project metadata using Salesforce DX and Git.
- Build a foundation for validation, automation, and future enhancements.

## Technology Stack

- **Platform:** Salesforce
- **Development Tools:** VS Code, Salesforce CLI
- **Programming Language:** Apex
- **Version Control:** Git and GitHub
- **Metadata Format:** Salesforce DX

## Project Structure

- `force-app/` — Salesforce application metadata.
- `config/` — Salesforce project and scratch-org configuration.
- `scripts/` — Apex and SOQL scripts.
- `ServiceRequestTrigger.trigger` — Apex trigger for service request processing.
- `sfdx-project.json` — Salesforce DX project configuration.

## Getting Started

1. Install Salesforce CLI and VS Code.
2. Install the Salesforce Extension Pack.
3. Open this project folder in VS Code.
4. Authorize your Salesforce development org:

   ```bash
   sf org login web
   ```

5. Review the metadata before deploying it to your Salesforce org.
6. Deploy the project when ready:

   ```bash
   sf project deploy start
   ```

## Development Status

This project is under development. Features, business rules, validation logic, and automated tests will be documented as they are implemented.

## Repository

[View the project on GitHub](https://github.com/Awais-attar/IT_Service_Management_System_Saleforce)
