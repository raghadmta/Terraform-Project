

# Terraform-Project

The Project is a custom module to deploy an application in the **United States** (us-east-1) and in the **United kingdom** (eu-west-2) regions. \
Each country will have its own instance of software deployed on an AWS instance using the same architecture.

1. It consists of a single ec2instance using the custom AMI, that holds the 
application server.
2. A DynamoDB NoSQL database that will be used to store the data.
3. S3 bucket which will be used to save documents.
4. Default VPC and subnets are used.  <br />

### architecture of the application
![image](https://user-images.githubusercontent.com/55548241/191432125-9e2775cb-5883-4e4d-a5b4-4b00b1ca2af5.png) 


### Terraform Module

```
.
├── app-uk
│   ├── main.tf
│   └── provider.tf
├── app-us
│   ├── main.tf
│   └── provider.tf
└── application_module
    ├── daynmo_db.tf
    ├── ec2_instance.tf
    ├── provider.tf
    ├── s3_bucket.tf
    ├── terraform.tf
    └── variables.tf

```
---
###### This project was part of Saudi Digital Acadmy's ( SDA ) DevOps BootCamp 2022
