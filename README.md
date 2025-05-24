# Terraform AWS EC2 Instance Setup

This file helps you create an EC2 instance on AWS using Terraform. This file contains variableized values for now, but you can also hardcode the values instead of variabilizing them as well.


##  Configurations

- EC2 instance type: `t3.micro`
- OS: Ubuntu (via AMI ID)
- Subnet: <subnet id>
- Public IP: Disabled
- Root EBS volume: Increased to 12 GB


## Step 1: Installation

###  Install AWS CLI

```bash
sudo apt update
sudo apt install awscli -y
aws --version
```
## Install Terraform  
### Open the powershell as an admin, then copy the following command on the command panel 
```bash
choco install terraform
```
---
## Step 2: Configure AWS CLI
```bash
aws configure
```
### the following will appear on your command panel after you type in "aws configure"
```bash
# - AWS Access Key
# - AWS Secret Key
# - Default region (e.g., us-east-1)
# - Output format (json)
```
## The Access Key is obtained by following the steps mentioned below: 

1. Sign in to the AWS Management Console
2. Click on your username in the top right corner of the console, and then select "My Security Credentials".
3. Scroll down and click on "Create New Access Key" to generate a new pair of access keys.
4. You can then either "Show Access Key" to view the keys on screen or "Download Key File" to save them as a .csv file.
5. The secret access key is only shown once, so be sure to secure the .csv file or copy the keys before closing the window.
   
---

## Step 3: File Setup 

 Your file structure should look like this
```bash

| File              | Purpose                                                                 |
|-------------------|-------------------------------------------------------------------------|
| `provider.tf`     | Defines AWS provider and credentials (hardcoded access + secret key)|
| `main.tf`         | Contains the EC2 instance resource block with all configurable fields   |
| `variables.tf`    | Declares all input variables used in `main.tf`                          |
| `terraform.tfvars`| Provides actual values for declared variables                           |

```
---
## Step 4: Terraform Commands to execute the operation

### 1. Initialize the project
```bash
terraform init
```

### 2. Preview the changes
```bash
terraform plan
```

### 3.Apply the changes
```bash
terraform apply -auto-approve
```

### 4. If you wish to destroy (delete) the resouces created you can run the following command:
```bash
terraform destroy -auto-approve
```
