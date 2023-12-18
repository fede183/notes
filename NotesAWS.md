# Notes for the exam

# Deployment models for cloud computing

In a cloud-based deployment model, you can migrate existing applications to the cloud, or you can design and build new applications in the cloud.

On-premises deployment is also known as a private cloud deployment. In this model, resources are deployed on premises by using virtualization and resource management tools.

In a hybrid deployment, cloud-based resources are connected to on-premises infrastructure. You might want to use this approach in a number of situations.

# Benefits of cloud computing

## Trade upfront expense for variable expense

Upfront expense refers to data centers, physical servers, and other resources that you would need to invest in before using them. Variable expense means you only pay for computing resources you consume instead of investing heavily in data centers and servers before you know how you're going to use them.

## Stop spending money to run and maintain data centers

Computing in data centers often requires you to spend more money and time managing infrastructure and servers.

## Stop guessing capacity

With cloud computing, you don't have to predict how much infrastructure capacity you will need before deploying an application.

## Benefit from massive economies of scale

By using cloud computing, you can achieve a lower variable cost than you can get on your own.

## Increase speed and agility

The flexibility of cloud computing makes it easier for you to develop and deploy applications.

## Go global in minutes

The global footprint of the AWS Cloud enables you to deploy applications to customers around the world quickly, while providing them with low latency. This means that even if you are located in a different part of the world than your customers, customers are able to access your applications with minimal delays.

# EC2

Provides secure, resizable compute capacity in the cloud as Amazon EC2 instances.

## EC2 instances types

- General purpose instances
- Compute optimized instances
- Memory optimized instances
- Accelerated computing instances. Examples of these functions include floating-point number calculations, graphics processing, and data pattern matching.
- Storage optimized instances

## Pricing:

### EC2 on demand
- high cost, no up front payments
- no long-term

### EC2 reserved
- reserve specific instance
- more years - more discount

### EC2 reserved convertable
- same but you can convert instance details

### EC2 saving plans
- flexible size
- more discount - more long term commitment

### EC2 spot instance
- more discount but you can lose them if your demand grows

### EC2 dedicated hosts
- a physical server
- allows to use your own

### EC2 dedicated instance
- hardware dedicated to you
- low level access

### EC2 capacity reservations
- no discount, get access on demand when you need it

# Auto Scaling EC2

Enables you to automatically add or remove Amazon EC2 instances in response to changing application demand. By automatically scaling your instances in and out as needed, you can maintain a greater sense of application availability.

When you create an Auto Scaling group, you can set the minimum number of Amazon EC2 instances. The minimum capacity is the number of Amazon EC2 instances that launch immediately after you have created the Auto Scaling group. In this example, the Auto Scaling group has a minimum capacity of one Amazon EC2 instance.

Next, you can set the desired capacity at two Amazon EC2 instances even though your application needs a minimum of a single Amazon EC2 instance to run.

The third configuration that you can set in an Auto Scaling group is the maximum capacity. For example, you might configure the Auto Scaling group to scale out in response to increased demand, but only to a maximum of four Amazon EC2 instances.

# Elastic Load Balancing

Elastic Load Balancing is the AWS service that automatically distributes incoming application traffic across multiple resources, such as Amazon EC2 instances.

# Messaging and Queuing

## Amazon Simple Notification Service (Amazon SNS)

Publish/Subscribe service. Using Amazon SNS topics, a publisher publishes messages to subscribers. This is similar to the coffee shop; the cashier provides coffee orders to the barista who makes the drinks.

## Amazon Simple Queue Service (Amazon SQS)

Message queuing service.

Using Amazon SQS, you can send, store, and receive messages between software components, without losing messages or requiring other services to be available. In Amazon SQS, an application sends messages into a queue. A user or service retrieves a message from the queue, processes it, and then deletes it from the queue.

# Serverless computing

The term serverless means that your code runs on servers, but you do not need to provision or manage these servers.

# AWS Lambda

Service that lets you run code without needing to provision or manage servers.

While using AWS Lambda, you pay only for the compute time that you consume. Charges apply only when your code is running. You can also run code for virtually any type of application or backend service, all with zero administration.

# Containers

Containers provide you with a standard way to package your application's code and dependencies into a single object. You can also use containers for processes and workflows in which there are essential requirements for security, reliability, and scalability.

# Amazon Elastic Container Service (Amazon ECS)

Highly scalable, high-performance container management system that enables you to run and scale containerized applications on AWS.

# Amazon Elastic Kubernetes Service (Amazon EKS)

Fully managed service that you can use to run Kubernetes on AWS.

# AWS Fargate

Serverless compute engine for containers. It works with both Amazon ECS and Amazon EKS.

When using AWS Fargate, you do not need to provision or manage servers. AWS Fargate manages your server infrastructure for you. You can focus more on innovating and developing your applications, and you pay only for the resources that are required to run your containers.

# Compute in the cloud

## Region

- Compliance with data governance and legal requirements
- Proximity to your customers
- Available services within a region
- Pricing

## Availability Zones

Is a single data center or a group of data centers within a Region. A Region has three or more AZ.

## Edge locations

Site that Amazon CloudFront uses to store cached copies of your content closer to your customers for faster delivery.

 ## AWS management console

Web-based interface for accessing and managing AWS services.

## AWS command line interface

To save time when making API requests, you can use the AWS Command Line Interface (AWS CLI).

## SDK

Another option for accessing and managing AWS services is the software development kits (SDKs).

## AWS Elastic Beanstalk

With AWS Elastic Beanstalk, you provide code and configuration settings, and Elastic Beanstalk deploys the resources necessary to perform the following tasks:

- Adjust capacity
- Load balancing
- Automatic scaling
- Application health monitoring

## AWS CloudFormation

With AWS CloudFormation, you can treat your infrastructure as code. This means that you can build an environment by writing lines of code instead of using the AWS Management Console to individually provision resources.

## AWS Outposts

Extend AWS infrastructure and services to different locations including your on-premises data center.

# Networking

## Amazon Virtual Private Cloud (Amazon VPC)

Imagine the millions of customers who use AWS services. Also, imagine the millions of resources that these customers have created, such as Amazon EC2 instances. Without boundaries around all of these resources, network traffic would be able to flow between them unrestricted.

## Internet gateway

To allow public traffic from the internet to access your VPC, you attach an internet gateway to the VPC.

## Virtual private gateway

To access private resources in a VPC, you can use a virtual private gateway.

## AWS Direct Connect

Service that lets you to establish a dedicated private connection between your data center and a VPC.

## Subnets

Section of a VPC in which you can group resources based on security or operational needs. Subnets can be public or private.

Public subnets contain resources that need to be accessible by the public, such as an online store’s website.

Private subnets contain resources that should be accessible only through your private network, such as a database that contains customers’ personal information and order histories.

## Network ACLs

Virtual firewall that controls inbound and outbound traffic at the subnet level.

## Stateless packet filtering

Network ACLs perform stateless packet filtering. They remember nothing and check packets that cross the subnet border each way: inbound and outbound.

## Security groups

Virtual firewall that controls inbound and outbound traffic for an Amazon EC2 instance.

## Stateful packet filtering

Security groups perform stateful packet filtering. They remember previous decisions made for incoming packets.

## VPC component recall

Recall the purpose of the following four VPC components. Compare your response by choosing each VPC component flashcard.

## Domain Name System (DNS)

Suppose that AnyCompany has a website hosted in the AWS Cloud. Customers enter the web address into their browser, and they are able to access the website.

## Amazon Route 53

DNS web service. It gives developers and businesses a reliable way to route end users to internet applications hosted in AWS.

# Storage and databases

## Instance stores

Block-level storage volumes behave like physical hard drives.

An instance store provides temporary block-level storage for an Amazon EC2 instance.

## Amazon EBS

Service that provides block-level storage volumes that you can use with Amazon EC2 instances. If you stop or terminate an Amazon EC2 instance, all the data on the attached EBS volume remains available.

An EBS snapshot is an incremental backup. This means that the first backup taken of a volume copies all the data. For subsequent backups, only the blocks of data that have changed since the most recent snapshot are saved.

## Object storage

In object storage, each object consists of data, metadata, and a key.

## Amazon Simple Storage Service (Amazon S3)

Service that provides object-level storage. Amazon S3 stores data as objects in buckets. You can upload any type of file to Amazon S3, such as images, videos, text files, and so on.

## Amazon S3 storage classes

You pay only for what you use. You can choose from a range of storage classes to select a fit for your business and cost needs.

### S3 Standard

- Designed for frequently accessed data
- Stores data in a minimum of three Availability Zones

### S3 Standard-Infrequent Access (S3 Standard-IA)

- Ideal for infrequently accessed data
- Similar to Amazon S3 Standard but has a lower storage price and higher retrieval price

### S3 One Zone-Infrequent Access (S3 One Zone-IA)

- Stores data in a single Availability Zone
- Has a lower storage price than Amazon S3 Standard-IA

### S3 Intelligent-Tiering

- Ideal for data with unknown or changing access patterns
- Requires a small monthly monitoring and automation fee per object

### S3 Glacier Instant Retrieval

- Works well for archived data that requires immediate access
- Can retrieve objects within a few milliseconds

### S3 Glacier Flexible Retrieval

- Low-cost storage designed for data archiving
- Able to retrieve objects within a few minutes to hours

### S3 Glacier Deep Archive

- Lowest-cost object storage class ideal for archiving
- Able to retrieve objects within 12 hours

### S3 Outposts

- Creates S3 buckets on Amazon S3 Outposts
- Makes it easier to retrieve, store, and access data on AWS Outposts

## Amazon Elastic File System

Scalable file system used with AWS Cloud services and on-premises resources. As you add and remove files, Amazon EFS grows and shrinks automatically. It can scale on demand to petabytes without disrupting applications.  Multiple AZ.

## Amazon Relational Database Service

Service that enables you to run relational databases in the AWS Cloud.

Managed service that automates tasks such as hardware provisioning, database setup, patching, and backups.

## Amazon Aurora

Enterprise-class relational database. It is compatible with MySQL and PostgreSQL relational databases. It is up to five times faster than standard MySQL databases and up to three times faster than standard PostgreSQL databases.

## Amazon DynamoDB

Key-value database service. It delivers single-digit millisecond performance at any scale. Serverless and can autoscale.

## Amazon Redshift

Data warehousing service that you can use for big data analytics. It offers the ability to collect data from many sources and helps you to understand relationships and trends across your data.

## AWS Database Migration Service (AWS DMS)

Enables you to migrate relational databases, nonrelational databases, and other types of data stores.

## Amazon DocumentDB

Document database service that supports MongoDB workloads. (MongoDB is a document database program.)

## Amazon Neptune

Graph database service.

## Amazon Quantum Ledger Database (Amazon QLDB)

Ledger database service.

## Amazon Managed Blockchain

Service that you can use to create and manage blockchain networks with open-source frameworks.

## Amazon ElastiCache

Service that adds caching layers on top of your databases to help improve the read times of common requests.

## Amazon DynamoDB Accelerator

In-memory cache for DynamoDB.

# Security

## The AWS shared responsibility model

Throughout this course, you have learned about a variety of resources that you can create in the AWS Cloud.

## IAM users

An IAM user is an identity that you create in AWS. It represents the person or application that interacts with AWS services and resources. It consists of a name and credentials.

## IAM policies

Document that allows or denies permissions to AWS services and resources.

## IAM groups

Collection of IAM users. When you assign an IAM policy to a group, all users in the group are granted permissions specified by the policy.

## IAM roles

In the coffee shop, an employee rotates to different workstations throughout the day.

## AWS Organizations

Suppose that your company has multiple AWS accounts. You can use AWS Organizations to consolidate and manage multiple AWS accounts within a central location.

## Organizational units

In AWS Organizations, you can group accounts into organizational units (OUs) to make it easier to manage accounts with similar business or security requirements.

## AWS Artifact

Depending on your companys industry, you may need to uphold specific standards. An audit or inspection will ensure that the company has met those standards.

Suppose that your company needs to sign an agreement with AWS regarding your use of certain types of information throughout AWS services. You can do this through AWS Artifact Agreements.

Next, suppose that a member of your companys development team is building an application and needs more information about their responsibility for complying with certain regulatory standards. You can advise them to access this information in AWS Artifact Reports.

## Customer Compliance Center

The Customer Compliance Center contains resources to help you learn more about AWS compliance.

## AWS Shield

Service that protects applications against DDoS attacks. AWS Shield provides two levels of protection: Standard and Advanced.

### AWS Shield Standard

Automatically protects all AWS customers at no cost. It protects your AWS resources from the most common, frequently occurring types of DDoS attacks.

### AWS Shield Advanced

Paid service that provides detailed attack diagnostics and the ability to detect and mitigate sophisticated DDoS attacks.

## AWS Key Management Service (AWS KMS)

The coffee shop has many items, such as coffee machines, pastries, money in the cash registers, and so on. You can think of these items as data.

## AWS WAF

Web application firewall that lets you monitor network requests that come into your web applications.

## Amazon Inspector

Suppose that the developers at the coffee shop are developing and testing a new ordering application. They want to make sure that they are designing the application in accordance with security best practices.

## Amazon GuardDuty

Service that provides intelligent threat detection for your AWS infrastructure and resources. It identifies threats by continuously monitoring the network activity and account behavior within your AWS environment.

# Monitoring And Analytics

## Amazon CloudWatch

Web service that enables you to monitor and manage various metrics and configure alarm actions based on data from those metrics.

## CloudWatch alarms

You can create alarms that automatically perform actions if the value of your metric has gone above or below a predefined threshold.

## CloudWatch dashboard

Enables you to access all the metrics for your resources from a single location.

## AWS CloudTrail

Records API calls for your account. The recorded information includes the identity of the API caller, the time of the API call, the source IP address of the API caller, and more. You can think of CloudTrail as a trail of breadcrumbs (or a log of actions) that someone has left behind them.

## CloudTrail Insights

You can also enable CloudTrail Insights. This optional feature allows CloudTrail to automatically detect unusual API activities in your AWS account.

## AWS Trusted Advisor

Web service that inspects your AWS environment and provides real-time recommendations in accordance with AWS best practices.

## AWS Trusted Advisor dashboard

When you access the Trusted Advisor dashboard on the AWS Management Console, you can review completed checks for cost optimization, performance, security, fault tolerance, and service limits.

# Pricing

## AWS Free Tier

Enables you to begin using certain services without having to worry about incurring costs for the specified period.

Three types of offers are available:
- Always Free
- 12 Months Free
- Trials

## How pricing works

- Pay for what you useay
- Pay less when you reserve
- Pay less with volume-based discounts when you use more

## AWS Pricing Calculator

Lets you explore AWS services and create an estimate for the cost of your use cases on AWS.

Use the AWS Billing & Cost Management dashboard to pay your AWS bill, monitor your usage, and analyze and control your costs.

## Consolidated billing

In an earlier module, you learned about AWS Organizations, a service that enables you to manage multiple AWS accounts from a central location. AWS Organizations also provides the option for consolidated billing.

## AWS Budgets

You can create budgets to plan your service usage, service costs, and instance reservations.

## WS Cost Explorer

Tool that lets you visualize, understand, and manage your AWS costs and usage over time.

## AWS Support

AWS offers four different Support plans to help you troubleshoot issues, lower costs, and efficiently use AWS services.

- Basic Support
- Developer
    - Best practice guidance
    - Client-side diagnostic tools
    - Building-block architecture support, which consists of guidance for how to use AWS offerings, features, and services together
- Business
    - Use-case guidance to identify AWS offerings, features, and services that can best support your specific needs
    - All AWS Trusted Advisor checks
    - Limited support for third-party software, such as common operating systems and application stack components
- Enterprise On-Ramp
    - A pool of Technical Account Managers to provide proactive guidance and coordinate access to programs and AWS experts
    - A Cost Optimization workshop (one per year)
    - A Concierge support team for billing and account assistance
    - Tools to monitor costs and performance through Trusted Advisor and Health API/Dashboard
- Enterprise Support
	- A designated Technical Account Manager to provide proactive guidance and coordinate access to programs and AWS experts
	- A Concierge support team for billing and account assistance
	- Operations Reviews and tools to monitor health
	- Training and Game Days to drive innovation
	- Tools to monitor costs and performance through Trusted Advisor and Health API/Dashboard

## Technical Account Manager (TAM)

The Enterprise On-Ramp and Enterprise Support plans include access to a Technical Account Manager (TAM).

## AWS Marketplace

Digital catalog that includes thousands of software listings from independent software vendors. You can use AWS Marketplace to find, test, and buy software that runs on AWS.

# Migration and Innovation

## Six core perspectives of the Cloud Adoption Framework

At the highest level, the AWS Cloud Adoption Framework (AWS CAF) organizes guidance into six areas of focus, called Perspectives. Each Perspective addresses distinct responsibilities. The planning process helps the right people across the organization prepare for the changes ahead.

## Business Perspective

The Business Perspective ensures that IT aligns with business needs and that IT investments link to key business results.

## People Perspective

The People Perspective supports development of an organization-wide change management strategy for successful cloud adoption.

## Governance Perspective

The Governance Perspective focuses on the skills and processes to align IT strategy with business strategy. This ensures that you maximize the business value and minimize risks.

## Platform Perspective

The Platform Perspective includes principles and patterns for implementing new solutions on the cloud, and migrating on-premises workloads to the cloud.

## Security Perspective

The Security Perspective ensures that the organization meets security objectives for visibility, auditability, control, and agility.

## Operations Perspective

The Operations Perspective helps you to enable, run, use, operate, and recover IT workloads to the level agreed upon with your business stakeholders.

## 6 strategies for migration

When migrating applications to the cloud, six of the most common migration strategies that you can implement are:
- Rehosting: also known as lift-and-shift involves moving applications without changes.
- Replatforming: also known as lift, tinker, and shift, involves making a few cloud optimizations to realize a tangible benefit.
- Refactoring/re-architecting: involves reimagining how an application is architected and developed by using cloud-native features.
- Repurchasing: involves moving from a traditional license to a software-as-a-service model
- Retaining: consists of keeping applications that are critical for the business in the source environment.
- Retiring: is the process of removing applications that are no longer needed.

## AWS Snow Family members

Collection of physical devices that help to physically transport up to exabytes of data into and out of AWS.
- AWS Snowcone is a small, rugged, and secure edge computing and data transfer device.
- Snowball Edge Storage Optimized devices are well suited for large-scale data migrations and recurring transfer workflows, in addition to local computing with higher capacity needs.
- Snowball Edge Compute Optimized provides powerful computing resources for use cases such as machine learning, full motion video analysis, analytics, and local computing stacks.
- AWS Snowmobile is an exabyte-scale data transfer service used to move large amounts of data to AWS.

## IA

For example, you can perform the following tasks:
- Convert speech to text with Amazon Transcribe.
- Discover patterns in text with Amazon Comprehend.
- Identify potentially fraudulent online activities with Amazon Fraud Detector.
- Build voice and text chatbots with Amazon Lex.

## Machine learning

Traditional machine learning (ML) development is complex, expensive, time consuming, and error prone. AWS offers Amazon SageMaker to remove the difficult work from the process and empower you to build, train, and deploy ML models quickly.

# The Cloud Journey

## The AWS Well-Architected Framework

The AWS Well-Architected Framework helps you understand how to design and operate reliable, secure, efficient, and cost-effective systems in the AWS Cloud. It provides a way for you to consistently measure your architecture against best practices and design principles and identify areas for improvement.

### Operational excellence

Operational excellence is the ability to run and monitor systems to deliver business value and to continually improve supporting processes and procedures.

### Security

The Security pillar is the ability to protect information, systems, and assets while delivering business value through risk assessments and mitigation strategies.

### Reliability

Reliability is the ability of a system to do the following:
- Recover from infrastructure or service disruptions
- Dynamically acquire computing resources to meet demand
- Mitigate disruptions such as misconfigurations or transient network issues

### Performance efficiency

Performance efficiency is the ability to use computing resources efficiently to meet system requirements and to maintain that efficiency as demand changes and technologies evolve.

### Cost optimization

Cost optimization is the ability to run systems to deliver business value at the lowest price point.

### Sustainability

Sustainability is the ability to continually improve sustainability impacts by reducing energy consumption and increasing efficiency across all components of a workload by maximizing the benefits from the provisioned resources and minimizing the total resources required.

## Advantages of cloud computing

- Trade upfront expense for variable expense.
- Benefit from massive economies of scale.
- Stop guessing capacity.
- Increase speed and agility.
- Stop spending money running and maintaining data centers.
- Go global in minutes.

# QA

Which Amazon EC2 instance type is suitable for data warehousing applications?

Storage optimized

Which Amazon EC2 instance type balances compute, memory, and networking resources?

General purpose

Which Amazon EC2 instance type is ideal for high-performance databases?

Memory optimized

Which Amazon EC2 instance type offers high-performance processors?

Compute optimized

Which Amazon EC2 pricing option provides a discount when you specify a number of EC2 instances to run a specific OS, instance family and size, and tenancy in one Region?

Standard Reserved Instances

Which Amazon EC2 pricing option provides a discount when you make an hourly spend commitment to an instance family and Region for a 1-year or 3-year term?

EC2 Instance Savings Plans

Which AWS service is the best choice for publishing messages to subscribers?

You want to use an Amazon EC2 instance for a batch processing workload. What would be the best Amazon EC2 instance type to use?

Compute optimized

What are the contract length options for Amazon EC2 Reserved Instances? (Select TWO.)

1 year

3 years

You have a workload that will run for a total of 6 months and can withstand interruptions. What would be the most cost-efficient Amazon EC2 purchasing option?

Spot Instance

Which process is an example of Elastic Load Balancing?

Ensuring that no single Amazon EC2 instance has to carry the full workload on its own

You want to deploy and manage containerized applications. Which service should you use?

Amazon Elastic Kubernetes Service (Amazon EKS)

Which statement best describes an AWS accounts default network access control list?

It is stateless and allows all inbound and outbound traffic.

Which statement best describes DNS resolution?

Translating a domain name to an IP address

Your company has an application that uses Amazon EC2 instances to run the customer-facing website and Amazon RDS database instances to store customers personal information. How should the developer configure the VPC according to best practices?

Place the Amazon EC2 instances in a public subnet and the Amazon RDS database instances in a private subnet.

Which component can be used to establish a private dedicated connection between your companys data center and AWS?

AWS Direct Connect

Which statement best describes security groups?

They are stateful and deny all inbound traffic by default.

Which component is used to connect a VPC to the internet?

Internet gateway

Which service is used to manage the DNS records for domain names?

Amazon Route 53

Which of the following are characteristics of the Amazon EBS service? (Select TWO.)

Best for data that requires retention

Physically attached to the host computer of an EC2 instance

Which Amazon S3 storage classes are optimized for archival data? (Select TWO.)

Amazon S3 Glacier Flexible Retrieval

Amazon S3 Glacier Deep Archive

Which statement or statements are TRUE about Amazon EBS volumes and Amazon EFS file systems?

EBS volumes store data within a single Availability Zone. Amazon EFS file systems store data across multiple Availability Zones.

You want to store data in an object storage service. Which AWS service is best for this type of storage?

Amazon Simple Storage Service (Amazon S3)

Which statement best describes Amazon DynamoDB?

A serverless key-value database service

Which service is used to query and analyze data across a data warehouse?

Amazon Redshift

You are configuring service control policies (SCPs) in AWS Organizations. Which identities and resources can SCPs be applied to? (Select TWO.)

An individual member account

An organizational unit (OU)

Which statement best describes an IAM policy?

A document that grants or denies permissions to AWS services and resources

An employee requires temporary access to create several Amazon S3 buckets. Which option would be the best choice for this task?

IAM role

Which statement best describes the principle of least privilege?

Granting only the permissions that are needed to perform specific tasks

Which service helps protect your applications against distributed denial-of-service (DDoS) attacks?

AWS Shield

Which task can AWS Key Management Service (AWS KMS) perform?

Create cryptographic keys.

Which tasks can you perform using AWS CloudTrail? (Select TWO.)

Track user activities and API requests throughout your AWS infrastructure

View metrics and graphs to monitor the performance of resources

Which actions can you perform using Amazon CloudWatch? (Select TWO.)

Monitor your resources utilization and performance

Receive real-time guidance for improving your AWS environment

Which service enables you to review the security of your Amazon S3 buckets by checking for open access permissions?

AWS Trusted Advisor

Which categories are included in the AWS Trusted Advisor dashboard? (Select TWO.)

Performance

Fault tolerance

Which action can you perform with consolidated billing?

Combine usage across accounts to receive volume pricing discounts.

Which pricing tool is used to visualize, understand, and manage your AWS costs and usage over time?

AWS Cost Explorer

Which pricing tool enables you to receive alerts when your service usage exceeds a threshold that you have defined?

AWS Budgets

Your company wants to receive support from an AWS Technical Account Manager (TAM). Which support plan should you choose?

Enterprise

Which service or resource is used to find third-party software that runs on AWS?

AWS Marketplace

Which Perspective of the AWS Cloud Adoption Framework helps you design, implement, and optimize your AWS infrastructure based on your business goals and perspectives?

Platform Perspective

Which Perspective of the AWS Cloud Adoption Framework helps you structure the selection and implementation of permissions?

Security Perspective

Which strategies are included in the six strategies for application migration? (Select TWO.)

Retaining

Rehosting

What is the storage capacity of AWS Snowmobile?

100 PB

Which statement best describes Amazon Lex?

A service that enables you to build conversational interfaces using voice and text

Which pillar of the AWS Well-Architected Framework focuses on the ability of a workload to consistently and correctly perform its intended functions?

Reliability

Which process is an example of benefiting from massive economies of scale?

Receiving lower pay-as-you-go prices as the result of AWS customers aggregated usage of services

Which pillar of the AWS Well-Architected Framework includes the ability to run workloads effectively and gain insights into their operations?

Operational Excellence

What are the benefits of cloud computing? (Select TWO.)

Increase speed and agility.

Stop spending money running and maintaining data centers

What is cloud computing?

On-demand delivery of IT resources and applications through the internet with pay-as-you-go pricing.

What is another name for on-premises deployment?

Private cloud deployment.

How does the scale of cloud computing help you to save costs?

The aggregated cloud usage from a large number of customers results in lower pay-as-you-go prices.

