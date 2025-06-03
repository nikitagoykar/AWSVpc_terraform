AWSVpc_terraform
This Terraform project provisions an AWS VPC, public subnet, security group, and an EC2 instance with SSH access.
---
Prerequisites
- AWS account with credentials.
- Terraform installed: https://www.terraform.io/downloads
- AWS CLI installed and configured.
- Existing EC2 Key Pair in your AWS region.
---
Step-by-Step Guide
1. Install Terraform and Configure AWS CLI
Install Terraform from terraform.io.

Install and configure AWS CLI:
-> aws configure
Enter your Access Key, Secret Key, Region (e.g., us-east-1), and output format (e.g., json).

Verify installations:
-> terraform -version
-> aws --version
---
2. Create Terraform Configuration
   -> Create a main.tf file 

3. Write variables.tf and outputs.tf
4. Initialize Terraform
Run:
-> terraform init
This downloads required providers.
---
5. Validate and Plan
Check syntax:
-> terraform validate
Preview what Terraform will create:
-> terraform plan
---
6. Apply the Infrastructure
Run:
->  apply
Type yes to confirm and create resources.
---
7. Verify in AWS Console
- Go to AWS Management Console.
- Check VPC and EC2 dashboards to verify resources.
- SSH into the EC2 instance:
ssh -i your-key.pem ec2-user@<instance_public_ip>
---
8. Destroy Resources
To clean up:
-> terraform destroy
Type yes to confirm deletion.
---
Notes
- Replace `your-key.pem` with your actual private key file.
- Make sure your `key_name` variable matches your AWS key pair name (not the .pem file path).
- Update `ami_id` for your AWS region and OS preference.
---
Feel free to open issues or contribute!
---
Author: Nikita Goykar
GitHub: https://github.com/nikitagoykar/AWSVpc_terraform
