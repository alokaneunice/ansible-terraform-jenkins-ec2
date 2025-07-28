# ansible-terraform-jenkins-ec2
This project is about automating the provisioning of two EC2 instances using Terraform, orchestrated by GitHub Actions pipeline.Here's a summary of its key components:

### Project Overview

1. *Infrastructure Provisioning*:
   - *Terraform* is used to create and manage AWS resources, specifically:
     - A Virtual Private Cloud (VPC).
     - Subnets for network segmentation.
     - EC2 instances—one designated as the Ansible controller and another as a remote server.

2. *Configuration Management*:
   - *Ansible* is employed to automate the installation and configuration of Jenkins on the remote server. This includes:
     - Installing Java (a prerequisite for Jenkins).
     - Adding the Jenkins repository and installing the Jenkins package.
     - Starting the Jenkins service and ensuring it runs on boot.
     - Checking the availability of Jenkins and retrieving the initial admin password.

3. *Continuous Integration/Continuous Deployment (CI/CD)*:
   - The goal is to set up a Jenkins server that can be used for CI/CD pipelines, allowing teams to automate the build, test, and deployment processes for their applications.

### Benefits of the Project

- *Automation*: Reduces manual setup time and human error by automating infrastructure provisioning and application deployment.
- *Scalability*: Easily scale the infrastructure up or down as needed by modifying Terraform configurations.
- *Consistency*: Ensures consistent environments across different deployments through version-controlled infrastructure and configuration.

### Target Audience

This project is useful for developers, DevOps engineers, and teams looking to leverage Jenkins for CI/CD processes in a cloud environment while practicing Infrastructure as Code (IaC) principles.

### Diagram Illustration

<img width="1732" height="815" alt="Image" src="https://github.com/user-attachments/assets/fff57555-fc39-4d4f-8b3f-e655a7c589e7" />

### Architecture diagram

![Image](https://github.com/user-attachments/assets/4cd74847-467d-4d51-b35c-30b4aafbd821)