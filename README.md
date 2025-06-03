
# AWSVpc_terraform

This Terraform project provisions an AWS VPC, public subnet, security group, and an EC2 instance with SSH access.

---

## Prerequisites

- AWS account with credentials.
- Terraform installed: [https://www.terraform.io/downloads](https://www.terraform.io/downloads)
- AWS CLI installed and configured.
- Existing EC2 Key Pair in your AWS region.

---

## Step-by-Step Guide

### 1. Install Terraform and Configure AWS CLI  
- Install Terraform from [terraform.io](https://www.terraform.io/).  
- Install and configure AWS CLI by running:  
  ```bash
  aws configure
  ```  
  Enter your Access Key, Secret Key, Region (e.g., `us-east-1`), and output format (e.g., `json`).

- Verify installations:  
  ```bash
  terraform -version
  aws --version
  ```

### 2. Create Terraform Configuration  
- Create a `main.tf` file with your AWS resources.  
- Write `variables.tf` and `outputs.tf` files for variables and outputs.

### 3. Initialize Terraform  
Run:  
```bash
terraform init
```
This command downloads required providers.

### 4. Validate and Plan  
- Check syntax:  
  ```bash
  terraform validate
  ```  
- Preview infrastructure changes:  
  ```bash
  terraform plan
  ```

### 5. Apply the Infrastructure  
Run:  
```bash
terraform apply
```
Type `yes` to confirm and create resources.

### 6. Verify in AWS Console  
- Go to AWS Management Console.  
- Check VPC and EC2 dashboards to verify resources.  
- SSH into the EC2 instance:  
  ```bash
  ssh -i your-key.pem ec2-user@<instance_public_ip>
  ```

### 7. Destroy Resources  
To clean up all resources:  
```bash
terraform destroy
```
Type `yes` to confirm deletion.

---

## Notes

- Replace `your-key.pem` with your actual private key file for SSH.  
- Ensure your `key_name` variable matches your AWS key pair name (not the `.pem` file path).  
- Update `ami_id` for your AWS region and OS preference.  

---

## Contributing

Feel free to open issues or contribute!

---

**Author:** Nikita Goykar  
**GitHub:** [https://github.com/nikitagoykar/AWSVpc_terraform](https://github.com/nikitagoykar/AWSVpc_terraform)
