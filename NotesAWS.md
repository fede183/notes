# Notes for the exam

AWS and how almost all of modern computing uses a basic client-server model.

# Deployment models for cloud computing

In a cloud-based deployment model, you can migrate existing applications to the cloud, or you can design and build new applications in the cloud.

On-premises deployment is also known as a private cloud deployment. In this model, resources are deployed on premises by using virtualization and resource management tools.

In a hybrid deployment, cloud-based resources are connected to on-premises infrastructure. You might want to use this approach in a number of situations.

# Benefits of cloud computing

## Trade upfront expense for variable expense

Upfront expense refers to data centers, physical servers, and other resources that you would need to invest in before using them. Variable expense means you only pay for computing resources you consume instead of investing heavily in data centers and servers before you know how you’re going to use them.

## Stop spending money to run and maintain data centers

Computing in data centers often requires you to spend more money and time managing infrastructure and servers. 

## Stop guessing capacity

With cloud computing, you don’t have to predict how much infrastructure capacity you will need before deploying an application. 

## Benefit from massive economies of scale

By using cloud computing, you can achieve a lower variable cost than you can get on your own.

## Increase speed and agility

The flexibility of cloud computing makes it easier for you to develop and deploy applications.

## Go global in minutes

The global footprint of the AWS Cloud enables you to deploy applications to customers around the world quickly, while providing them with low latency. This means that even if you are located in a different part of the world than your customers, customers are able to access your applications with minimal delays. 

## QA

What is cloud computing?
On-demand delivery of IT resources and applications through the internet with pay-as-you-go pricing.

What is another name for on-premises deployment?
Private cloud deployment.

How does the scale of cloud computing help you to save costs?
The aggregated cloud usage from a large number of customers results in lower pay-as-you-go prices.

# EC2

Provides secure, resizable compute capacity in the cloud as Amazon EC2 instances.

## EC2 instances types
+ General purpose instances
+ Compute optimized instances
+ Memory optimized instances
+ Accelerated computing instances. Examples of these functions include floating-point number calculations, graphics processing, and data pattern matching.
+ Storage optimized instances

### QA
Which Amazon EC2 instance type is suitable for data warehousing applications?
Storage optimized

Which Amazon EC2 instance type balances compute, memory, and networking resources?
General purpose

Which Amazon EC2 instance type is ideal for high-performance databases?
Memory optimized

Which Amazon EC2 instance type offers high-performance processors?
Compute optimized

## Pricing:
EC2 on demand
+ high cost, no up front payments
+ no long-term

EC2 reserved
+ reserve specific instance
+ more years - more discount

EC2 reserved convertable
+ same but you can convert instance details

EC2 saving plans
+ flexible size
+ more discount - more long term commitment

EC2 spot instance
+ more discount but you can lose them if your demand grows

EC2 dedicated hosts
+ a physical server
+ allows to use your own

EC2 dedicated instance
+ hardware dedicated to you
+ low level access

EC2 capacity reservations
+ no discount, get access on demand when you need it

### QA
Which Amazon EC2 pricing option provides a discount when you specify a number of EC2 instances to run a specific OS, instance family and size, and tenancy in one Region?

Standard Reserved Instances

Which Amazon EC2 pricing option provides a discount when you make an hourly spend commitment to an instance family and Region for a 1-year or 3-year term?

EC2 Instance Savings Plans

# Auto Scaling EC2
Enables you to automatically add or remove Amazon EC2 instances in response to changing application demand. By automatically scaling your instances in and out as needed, you can maintain a greater sense of application availability.

When you create an Auto Scaling group, you can set the minimum number of Amazon EC2 instances. The minimum capacity is the number of Amazon EC2 instances that launch immediately after you have created the Auto Scaling group. In this example, the Auto Scaling group has a minimum capacity of one Amazon EC2 instance.

Next, you can set the desired capacity at two Amazon EC2 instances even though your application needs a minimum of a single Amazon EC2 instance to run.

The third configuration that you can set in an Auto Scaling group is the maximum capacity. For example, you might configure the Auto Scaling group to scale out in response to increased demand, but only to a maximum of four Amazon EC2 instances.

# Elastic Load Balancing
Elastic Load Balancing is the AWS service that automatically distributes incoming application traffic across multiple resources, such as Amazon EC2 instances. 

# Messaging and Queuing
## Amazon Simple Notification Service (Amazon SNS)
Amazon Simple Notification Service (Amazon SNS) is a publish/subscribe service. Using Amazon SNS topics, a publisher publishes messages to subscribers. This is similar to the coffee shop; the cashier provides coffee orders to the barista who makes the drinks.

## Amazon Simple Queue Service (Amazon SQS)
Amazon Simple Queue Service (Amazon SQS) is a message queuing service. 

Using Amazon SQS, you can send, store, and receive messages between software components, without losing messages or requiring other services to be available. In Amazon SQS, an application sends messages into a queue. A user or service retrieves a message from the queue, processes it, and then deletes it from the queue.

### QA

Which AWS service is the best choice for publishing messages to subscribers?

# Serverless computing
The term “serverless” means that your code runs on servers, but you do not need to provision or manage these servers.

# AWS Lambda
AWS Lambda(opens in a new tab) is a service that lets you run code without needing to provision or manage servers. 

While using AWS Lambda, you pay only for the compute time that you consume. Charges apply only when your code is running. You can also run code for virtually any type of application or backend service, all with zero administration. 

# Containers
Containers provide you with a standard way to package your application's code and dependencies into a single object. You can also use containers for processes and workflows in which there are essential requirements for security, reliability, and scalability.

# Amazon Elastic Container Service (Amazon ECS)
Amazon Elastic Container Service (Amazon ECS)(opens in a new tab) is a highly scalable, high-performance container management system that enables you to run and scale containerized applications on AWS. 

# Amazon Elastic Kubernetes Service (Amazon EKS)
Amazon Elastic Kubernetes Service (Amazon EKS)(opens in a new tab) is a fully managed service that you can use to run Kubernetes on AWS. 

# AWS Fargate
AWS Fargate(opens in a new tab) is a serverless compute engine for containers. It works with both Amazon ECS and Amazon EKS. 

When using AWS Fargate, you do not need to provision or manage servers. AWS Fargate manages your server infrastructure for you. You can focus more on innovating and developing your applications, and you pay only for the resources that are required to run your containers.

### QA

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


