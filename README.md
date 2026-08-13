# Automated Database Backup and Restore
## Project Overview
This project implements an automated MySQL database backup and restore solution using Docker and GitHub Actions.
The workflow starts a MySQL database, prepares test data, creates a database backup using `mysqldump`, uploads the backup as a GitHub Actions artifact, clears the database, restores the database from the backup, and verifies that the original data has been successfully recovered.
## Objectives
- Automate MySQL database backups.- Store generated backups as GitHub Actions artifacts.- Demonstrate database restore and recovery.- Verify that backed-up data can be successfully restored.- Use GitHub Actions for automation.- Use Docker to provide a consistent MySQL environment.
## Features
- Manual workflow execution.- Scheduled automated backups.- Dockerized MySQL database.- Automated database preparation.- Automated backup using `mysqldump`.- Backup artifact upload.- Database clearing for restore testing.- Automated database restoration.- Automated restore verification.- Automatic cleanup of the MySQL container.
## Technologies Used
- Git- GitHub- GitHub Actions- Docker- Docker Compose- MySQL 8.0- Bash- YAML- mysqldump
## Project Structure
AUTOMATED-DB-BACKUP/│├── .github/│ └── workflows/│ └── backup.yml│├── backups/├── docs/├── scripts/│ └── backup.sh├── docker-compose.yml└── README.md
## Database Configuration
Database: `backupdb`
Table: `students`
| ID | Name | Department ||---:|---|---|| 1 | Olaniyan Mariah | Computer Science || 2 | Esther Olakunle | Information Technology || 3 | Fresky Thompson | Software Engineering |
## Backup Workflow
The GitHub Actions workflow performs the following operations:
Checkout Repository↓Start MySQL Container↓Wait for MySQL↓Prepare Database↓Verify Initial Data↓Create SQL Backup↓Upload Backup Artifact↓Clear Database↓Restore Database↓Verify Restored Data↓Stop MySQL
## Backup Process
The workflow creates the database backup using `mysqldump`.
The generated backup is stored at:
`backups/generated/backup.sql`
The workflow verifies that the backup file exists and is not empty before uploading it as a GitHub Actions artifact.
## Restore Process
After creating the backup, the workflow clears the `students` table.
It then restores the database from the generated SQL backup.
The workflow verifies the restoration by counting the records in the `students` table.
The restore is considered successful when all 3 original records are recovered.
## Verification
The workflow verifies that:
1. MySQL becomes available.2. The database contains 3 initial records.3. The backup file is successfully generated.4. The backup artifact is uploaded.5. The database is successfully cleared.6. The backup is successfully restored.7. All 3 records are recovered.
## Successful Test Result
GitHub Actions Run #27 completed successfully.
- Workflow: Automated Database Backup- Run: #27- Status: Success- Duration: 34 seconds- Artifact: database-backup
The generated backup artifact was inspected and confirmed to contain the `backupdb` database and the `students` table.
The SQL backup contains the three expected records:
- Olaniyan Mariah — Computer Science- Esther Olakunle — Information Technology- Fresky Thompson — Software Engineering
The backup also contains the SQL table structure and data required to restore the database.
## Backup Artifact
The successful GitHub Actions run generated an artifact named:
`database-backup`
The artifact contains:
`backup.sql`
The backup was manually inspected and verified after the successful workflow execution.
## Local Setup
Clone the repository:
`git clone https://github.com/SnexyIT/automated-db-backup.git`
Enter the project directory:
`cd automated-db-backup`
Start MySQL:
`docker compose up -d`
Check the running container:
`docker ps`
Stop the environment:
`docker compose down`
## GitHub Actions
The workflow file is located at:
`.github/workflows/backup.yml`
The workflow can be triggered manually from GitHub Actions and is also configured for scheduled execution.
## Project Outcome
The project successfully demonstrates an automated database backup and recovery pipeline using Docker, MySQL, and GitHub Actions.
The database backup was successfully created, uploaded as an artifact, restored, and verified.
## Author
**Sunday Akinola**