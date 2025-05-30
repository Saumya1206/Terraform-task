# Terraform 3-Tier AWS Architecture

This repository contains Terraform code to provision a **highly available, scalable, and modular 3-tier architecture** on AWS. It includes a **VPC**, **public and private subnets**, **Internet and NAT gateways**, **Application Load Balancers**, **Auto Scaling Groups with Launch Templates**, **EC2 instances**, and an **RDS database**—all structured using reusable Terraform modules.

## Architecture Overview

The infrastructure is deployed in a single AWS region with two Availability Zones (AZs) and consists of the following tiers:

- **Web Tier (Public Subnets)**: 
  - EC2 instances behind a public ALB
  - Internet Gateway and public routing

- **Application Tier (Private Subnets)**:
  - EC2 instances in private subnets
  - Private ALB for internal traffic

- **Database Tier (Private Subnets)**:
  - Amazon RDS instance in a private subnet
  - No direct internet access

## Features

- ✅ Highly Available (multi-AZ)
- ✅ Modular Terraform structure
- ✅ NAT Gateway for outbound internet access from private subnets
- ✅ Application Load Balancer (public & private)
- ✅ Launch Templates with Auto Scaling Groups
- ✅ Secure and scalable architecture
- ✅ Parameterized with `terraform.tfvars`

---

## Repository Structure

```bash
Terraform
├──readme.md
├── main.tf
├── provider.tf
├── version.tf
├── terraform.tfvars
├── variables.tf
├── output.tf
└── modules/
    ├── vpc/
    ├── subnet/
    ├── igw/
    ├── nat_gateway/
    ├── route_table/
    ├── alb/
    ├── launch_template/
    ├── asg/
    ├── ec2/
    ├── security_group/
    ├── rds/
    └── key_pair/


Prerequisites
Terraform v1.3+

AWS CLI configured with appropriate credentials

SSH key pair (for EC2 access)

## Usage

### Initialize Terraform:

```bash
terraform init

terraform plan

terraform apply

terraform destroy
