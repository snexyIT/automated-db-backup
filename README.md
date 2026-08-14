# Automated Database Backup and Restore

## Project Overview

This project implements an automated MySQL database backup and restore solution using Docker and GitHub Actions.

The workflow starts a MySQL database, prepares test data, creates a database backup using `mysqldump`, uploads the backup as a GitHub Actions artifact, clears the database, restores the database from the backup, and verifies that the original data has been successfully recovered.

## Objectives

- Automate MySQL database backups.
- Store generated backups as GitHub Actions artifacts.
- Demonstrate database restore and recovery.
- Verify that backed-up data can be successfully restored.
- Use GitHub Actions for automation.
- Use Docker to provide a consistent MySQL environment.

## Features

- Manual workflow execution.
- Scheduled automated backups.
- Dockerized MySQL database.
- Automated database preparation.
- Automated backup using `mysqldump`.
- Backup artifact upload.
- Database clearing for restore testing.
- Automated database restoration.
- Automated restore verification.
- Automatic cleanup of the MySQL container.

## Technologies Used

- Git
- GitHub
- GitHub Actions
- Docker
- Docker Compose
- MySQL 8.0
- Bash
- YAML
- mysqldump

## Project Structure

```text
AUTOMATED-DB-BACKUP/
│
├── .github/
│   └── workflows/
│       └── backup.yml
│
├── backups/
│
├── docs/
│   ├── architecture.md
│   └── verification.md
│
├── scripts/
│   └── backup.sh
│
├── docker-compose.yml
└── README.md