# Backup and Restore Verification

## Purpose

This document records the verification of the automated MySQL database backup and restore pipeline implemented with Docker and GitHub Actions.

The verification confirms that the workflow can create a valid database backup, store the backup as a GitHub Actions artifact, clear the database, restore the backup, and recover the original data successfully.

## Verification Environment

- Database: MySQL 8.0
- Database name: `backupdb`
- Test table: `students`
- Container: `mysql-db`
- Automation platform: GitHub Actions
- Container platform: Docker Compose
- Backup utility: `mysqldump`

## Test Data

The test database was populated with three records:

| ID | Name | Department |
|---:|---|---|
| 1 | Olaniyan Mariah | Computer Science |
| 2 | Esther Olakunle | Information Technology |
| 3 | Fresky Thompson | Software Engineering |

Expected record count:

```text
3