# Azure DevOps Production Architecture

## Overview

This project demonstrates a production-ready Azure DevOps CI/CD implementation for deploying a containerized web application to Azure Kubernetes Service (AKS).

## Components

### GitHub
Stores application source code.

### Azure DevOps
Executes CI/CD pipelines.

### Docker
Builds the application container image.

### Azure Container Registry (ACR)
Stores Docker images securely.

### Azure Kubernetes Service (AKS)
Runs the application in production.

### PostgreSQL
Stores application data.

### Azure Monitor
Monitors infrastructure health.

### Application Insights
Collects application telemetry and performance metrics.

### Log Analytics
Centralized log collection and troubleshooting.

## Deployment Flow

GitHub → Azure DevOps → Docker → ACR → AKS → Monitoring
