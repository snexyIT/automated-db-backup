# Automated Database Backup Architecture

## Overview

This project implements an automated MySQL database backup and restore system using Docker, MySQL, Bash, and GitHub Actions.

The architecture provides a repeatable process for creating a database backup, storing the backup as a GitHub Actions artifact, clearing the test database, restoring the backup, and verifying successful recovery.

## Architecture Flow

```text
Developer / GitHub
        |
        v
GitHub Actions Workflow
        |
        v
Ubuntu Runner
        |
        v
Docker Compose
        |
        v
MySQL 8.0 Container
        |
        v
     backupdb
        |
        +----------------------+
        |                      |
        v                      v
   Prepare Data           mysqldump
                              |
                              v
                         backup.sql
                              |
                              v
                    GitHub Actions Artifact
                              |
                              v
                       Clear Database
                              |
                              v
                       Restore backup.sql
                              |
                              v
                     Verify Restored Data
                              |
                              v
                           SUCCESS