🔐 AWS Security Group Configuration  
📌 Overview 

This project demonstrates how to create and manage an AWS Security Group to control inbound and outbound traffic for cloud resources such as Amazon EC2 instances.

A Security Group acts as a virtual firewall that allows you to define rules for permitting or restricting traffic based on ports, protocols, and IP ranges.

🎯 Objectives  
Configure inbound and outbound rules  
Allow secure access (SSH, HTTP, HTTPS)  
Restrict unauthorized traffic  
Apply Security Group to EC2 instances  
Understand stateful firewall behavior  
🛠️ Technologies Used  
Amazon Web Services (AWS)  
Amazon EC2  
Amazon VPC  
⚙️ Configuration Details  
🔹 Inbound Rules  
Type	Protocol	Port	Source	Description  
SSH	TCP	22	My IP	Secure remote access  
HTTP	TCP	80	0.0.0.0/0	Public web access  
HTTPS	TCP	443	0.0.0.0/0	Secure web access  
🔹 Outbound Rules  
Type	Protocol	Port	Destination	Description  
All	All	All	0.0.0.0/0	Allow all outbound traffic  
🚀 Steps to Implement  
Create a Security Group in VPC  
Add inbound rules (SSH, HTTP, HTTPS)  
Configure outbound rules  
Attach Security Group to EC2 instance  
Test connectivity (SSH & browser access)  
🔍 Key Concepts  
Stateful Firewall → Allows return traffic automatically  
Least Privilege Principle → Only allow required ports  
IP Restriction → Limit SSH access to specific IP  
✅ Use Cases  
Hosting web applications  
Securing cloud servers  
Controlling network access in AWS  
📷 Example Architecture  
User → Internet → Security Group → EC2 Instance  
⚠️ Best Practices  
Do not allow 0.0.0.0/0 for SSH  
Use specific IP ranges  
Regularly audit Security Group rules  
Use multiple Security Groups for layered security  
📌 Conclusion

  This project helps in understanding how to secure cloud infrastructure using AWS Security Groups and apply best practices to protect resources from unauthorized access.
