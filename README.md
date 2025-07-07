# 🚀 Terraform Mini Project: Deploy Nginx on AWS EC2


---

## 📌 Project Objectives

- Use **Infrastructure as Code (IaC)** principles with Terraform.
- Deploy an **EC2 instance** on AWS using Terraform scripts.
- Install and run **Nginx** using a user data script.
- Configure **Security Groups** to allow web traffic on port 80.

---

## 🛠️ Tools & Technologies

- [Terraform](https://www.terraform.io/)
- [AWS Free Tier](https://aws.amazon.com/free/)
- [Amazon EC2](https://aws.amazon.com/ec2/)
- User Data scripts
- VS Code / CLI

---

## 📁 Project Structure

```

terraform-aws-nginx/
├── main.tf              # Main Terraform config
├── provider.tf          # AWS provider configuration
├── variables.tf         # Input variables
├── outputs.tf           # Outputs public IP
├── userdata.sh          # Installs and starts Nginx
├── terraform.tfvars     # Variable values (e.g., key\_name)
└── README.md            # Project documentation

````

---

## 🚀 Getting Started

### 1️⃣ Clone the repository

```bash
git clone ttps://github.com/IliasBatas1/terraform-aws-nginx.git
cd terraform-aws-nginx
````

### 2️⃣ Install Terraform

Follow the [official guide](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) to install Terraform.

### 3️⃣ Configure AWS Credentials

Ensure you have an IAM user with programmatic access and configure your credentials:

```bash
aws configure
```

### 4️⃣ Set Up Your Key Pair

Ensure your AWS EC2 key pair is created and update `terraform.tfvars`:

```hcl
key_name = "your-keypair-name"
```

---

## 🔧 Terraform Commands

### Initialize Terraform

```bash
terraform init
```

### Plan the Infrastructure

```bash
terraform plan
```

### Apply the Configuration

```bash
terraform apply
```

### Access the Web Server

Copy the output IP and visit `http://<public_ip>` in your browser.
You should see the Nginx welcome page.

### Destroy Resources (Important!)

```bash
terraform destroy
```

---

## 📜 User Data Script (userdata.sh)

```bash
#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install nginx1 -y
sudo systemctl start nginx
sudo systemctl enable nginx
```

---

## 📤 Deliverables

* ✅ Working EC2 instance with Nginx accessible via public IP
* ✅ GitHub repo with:

  * `*.tf` files
  * `userdata.sh`
  * `README.md`
* ✅ Screenshot of:

  * Terraform apply output
  * Nginx running in browser

---

## 📚 Learning Resources

| Task                    | Link                                                                                                                                                                                      |
| ----------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Install Terraform       | [https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)                        |
| AWS IAM Setup           | [https://docs.aws.amazon.com/IAM/latest/UserGuide/id\_users\_create.html](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html)                                          |
| Terraform AWS EC2       | [https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance)              |
| Security Group Resource | [https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security\_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) |
| User Data with EC2      | [https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html)                                                  |
| Destroy Command         | [https://developer.hashicorp.com/terraform/cli/commands/destroy](https://developer.hashicorp.com/terraform/cli/commands/destroy)                                                          |

---

