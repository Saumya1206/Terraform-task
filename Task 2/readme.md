# ⚙️ Task 2: AWS EC2 Instance Setup Using Terraform Module

## 📌 Overview

This task demonstrates how to launch an AWS EC2 instance by leveraging a reusable Terraform module. Using modules enhances code organization, reusability, and scalability.

## 🛠️ Prerequisites

- AWS Account with necessary permissions
- AWS CLI installed and configured
- Terraform installed on your local machine

## 📁 Project Structure

Task-2/
├── main.tf # Calls the EC2 module with variable inputs
├── modules/
│ └── ec2-instance/ # Reusable EC2 instance module
│ ├── main.tf # Defines EC2 resource
│ ├── variables.tf # Module input variables
│ └── outputs.tf # Module output variables
├── variables.tf # Declares input variables for main.tf
└── terraform.tfvars # Provides actual values for variables


## ⚙️ What This Module Does

- Creates an EC2 instance with specified:
  - Instance type (e.g., t3.micro)
  - AMI (e.g., Ubuntu)
  - Subnet and VPC association
  - Security groups
  - Key pair for SSH access
  - Optional public IP assignment
  - EBS volume size

## 🚀 How to Use

1. **Clone the Repository**

  
   git clone https://github.com/Saumya1206/Terraform-task.git
   cd Terraform-task/Task-2
Initialize Terraform


terraform init
Preview Changes


terraform plan
Apply the Configuration


terraform apply -auto-approve
Destroy Resources (when needed)


terraform destroy -auto-approve
