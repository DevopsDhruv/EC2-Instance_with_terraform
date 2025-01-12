# Multiple EC2 Instances with Terraform

This Terraform configuration creates a scalable deployment with multiple EC2 instances launched in your specified Availability Zone. Each instance will be attached to a security group and configured with your SSH key for remote access. You can easily customize the number of instances by editing the `terraform.tfvars` file.

## Infrastructure Diagram

![Image Alt]()

## Prerequisites

1. **Terraform Installation:** Ensure you have Terraform installed on your system. Download and install it from the official website: https://developer.hashicorp.com/terraform/install

2. **AWS Access Key and Secret Key:** You'll need your AWS access key and secret key to configure Terraform for interacting with AWS resources.

   * **Set Up Access Key and Secret Key in `terraform.tfvars` file:**
     ```bash
     access = "your_access_key"
     secret = "your_secret_key"
     ```

3. **Create SSH Key for EC2 Instances:**

   * Open your terminal and navigate to the `AWS_instance` folder.
   * Run the following command to create an SSH key:
      ```bash
      ssh-keygen
      ```
      * The command will prompt you for the location and name of your key.
      * Type `./instance_key` (Exactly) when prompted.
      * Press Enter twice when prompted for a passphrase (optional, not recommended for production).

   Your SSH key will be created in the `AWS_instance` folder.

## Usage

1. **Edit the `terraform.tfvars` file:** Specify the desired number of instances and any other configuration options within the `terraform.tfvars` file.

2. **Run Terraform Commands:** Open your terminal and navigate to the `AWS_instance` folder. Then, run the following commands:

   * Initialize Terraform:

      ```bash
      terraform init
      ```
   * Apply the Terraform configuration:

      ```bash
      terraform apply --auto-approve
      ```

   This will create the specified number of EC2 instances in your AWS environment.

## SSH to EC2 Instances

Once your infrastructure is created, Terraform will output the public IP addresses of your EC2 instances. You can use these addresses to SSH into the instances.

**To SSH into a public EC2 instance:**

1. **Copy the Public IP Address:** Copy the displayed public IP address of the target instance.

2. **Connect using SSH:** Open your terminal and run the following command, replacing `0.0.0.0` with the copied public IP address:

   ```bash
   ssh -i 'instance_key' ubuntu@0.0.0.0
   ```

   This will establish an SSH connection to your chosen EC2 instance.
