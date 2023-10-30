# Notes for AWS Exam

# IAM
you have a root service, you can create groups (any user can be in different groups)

## IAM Permissions
json config file for the permissions of users/groups

## Policies
can be from a group or exclusive of a user

## Password Policy
define pass qualities. no-reuse, change in x days

## Multi factor auth:
+ Virtual MFA device: Google AUTH, Amazon AUTHY
+ Universal 2nd factor: yubikey
+ Hardware KeyFob

## Access AWS:
AWS manager console (Pass + MFA)\
AWS command line interface (cli) (use Access key)\
AWS software developer kit (SDK) (use Access key)

Access keys: generated using the AWS console\
IAM roles for service: set of permissions over services\
IAM credentials report (account-level): list of accounts users and their credentials status\
IAM access advisor (user-level): shows the service permissions of a user and were those were last access

## Billing
costs and budget you can see the budget of your users from root or gave the permission to see it to regular users\
creating budgets using max spending that will be notified by email

# EC2 - Elastic Compute Cloud
Renting VM (EC2)\
Storing on Virtual drives (EBS)\
Distributing loads (ELB)\
Scaling (ASG)

To generate you need:
1. to provide or create a key pair
2. choose the type
3. will create a security group. Is necessary to allow SSH traffic and HTTP traffic from the internet
4. choose the storage
5. in advance modify the user data to made a script exec on the service first launch

## EC2 - instance types: List of instance types optimised for different cases

name: m5.2xlarge

m: instance class, in this case is general purpose\
5: generation of hardware\
2xlarge: size for memory + CPU, etc

They can be:
+ general purpose
+ compute optimized (gaming, ML, etc)
+ memory optimized (database, realtime)
+ storage optimized (database, etc)

## Security Groups: EC2 will use them to control the traffic
it define the ports usages and functions\
can be attached to multiple instances\
an EC2 instance can use more than one\
we can authorise a Security Group to let a message of an instance that use an specific Security Group\
if you see a timeout in EC2, it will be related to the security group config

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

# EBS - Elastic Block Store
network drive that you can attach to your instance\
it persist data\
only can be mounted at one instance at the time\
one specific availability zone\
variable capacity\
you can use multiples EBS for each instance\
can be unattached

## Delete on termination
when terminate it can be deleted or not\
with that you can still have the volume after the instance delete

## Snapshots
is a backup of an EBS at a point in time\
EBS snapshot archive\
is more cheaper

## Recycle bin for EBS snapshot
setup rules for retain deleted\
snapshots from 1 day to a year

## Fast snapshot restore
force full initialization of snapshot ($$$)

## AMI: Amazon machine image
is a customization of your EC2 instance\
you add your software\
faster boot (is pre-package)\
Build for a region and can be copied to a other

## AMI process
start EC2 and customize\
stop EC2 (for data consistency)\
build AMI\
launch instances from AMI's

## EC2 instance store
EBS had limited performance\
with EC2 instance store we have better performance\
they lose the storage when stopped\
good buffer/cache

## EBS volume types
gp2/3: SSD general purpose\
io1/2: SSD highest-performance, mission critical\
st1: HDD low cost for frequently access\
sc1: HDD low cost for less frequently access\
gp2/3/io1/2: can be used as boot volumes

## EBS multi-attach - io1/2
can be attach with multiple instances within the same zone\
up to 16 EC2 at the time

# EFS - Elastic File System

## the files can be mounted on many EC2
can be from different zones\
highly available, scalable, expensive\
use case: content manager, web service, data sharing\
use security groups\
support encryption\
pay per use

## EFS - performance and storage classes

### Performance mode
general purpose\
max I/O\
### Throughput mode

#### Bursting
1TB storage, 50MB's mem\
burst up to 100MB's\
#### Provisioned:
set throughput\
#### Elastic
automatically scales throughput based on workload

# ELB - Elastic Load Balancer

# Load Balancer 
forward traffic to multiple servers\
less costly that do it yourself

## Health checks
let the ELB to know if an instance is available\
it ask the instance, normally with health and if it doesn't get an OK(200) is unhealthy

## Classic Load Balancer (deprecated)

## Application Load Balancer: HTTP, Web socket

## Network Load Balancer: TCP, TLS
millions requests per second\
static IP <-> AZ\
works with EC2, IP private, application load balancers\
health checks http, tcp

## Gateway Load Balancer: 3 layers - IP protocol
they can also be internal or external\
firewalls, instruction detection\
3er party\
works with EC2, IP private\
it redirects your traffic to a 3er party target group and their response to your application

### They can use target groups
	EC2 instances\
	ECS\
	Lambda functions\
	IP addresses - private

## Stinky sessions
same client to the same instance\
classic, application and network\
use a cookie\
use case: maintain session

## Application Based cookie
custom cookie: generated by target\
application cookie: generated by Load Balancer\
duration based cookie: generated by Load Balancer

## Cross-Zone Load Balancer
let handle traffic for more than one AZ\
is available by default\
not extra charges for application load balancer, network and gateway

## SSL certificates
encrypt traffic between your users and ELB

## SNL - server name indicator
multiple ssl/cert onto one web server\
the client hat to indicate the hostname of the target in the initial SSL handshake\
works with ALB and NLB, not for CLB

## Connection draining
time to complete in-flight request while instance is de-register or unhealthy\
1 to 3600 seconds\
can be disable

## ASG - Auto scaling group
the load can change\
scales automatically\
ensure min and max EC2 instances running\
re-create or terminates instances

## ASG - Scaling policies
target tracking scaling\
example: ASG CPU around 90%\
simple/step scaling\
when trigger, add/remove n EC2 instances

## ASG - Scheduled actions
anticipate a scaling based on use (predictive)\
continuously forecast

## Metric
cpu use\
request count per target\
average network i/o\
custom

## Colddowns period
auto scaling - instance refresh\
update launch template and re-create all EC2 instance\
minimum healthy percentage

# Amazon RDS - Relational database
is better that deploy on EC2\
OS patching\
backups\
multi AZ\
scalability capability\
storage backed EBS

## RDS Storage auto scaling
RDS detects you are running out of free database storage\
you have to set maximum storage threshold

## Read replicas
must update connection string for leverage\
network lost\
some region, different AZ (free)

## Multi AZ (Disaster recovery)
increase availability\
cannot be read nor write\
Simple AZ -> Multi AZ: use DB snapshot to copy and restore in other zone

## Amazon Aurora
compatible with postgres and mysql\
cloud optimized\
storage automatically grows\
can have 15 replicas\
instance failover\
6 copies of your data across 3 AZ\
3 max to read\
any replica can became the master in case of failure\
support cross region replication

### Aurora security
if the master is not encrypted, you cannot encrypt the replicas\
existing ones need to create a snapshot -> encrypt -> restore\
in-flight encryption\
	ready to have by default\
IAM authentication\
	IAM roles to connect to your database\
Security groups\
	control network access\
	no have ssh access, except with RDS custom\
Could watch logs

## RDS proxy
allows apps to pool and share connections\
improve database efficiency by reducing stress on database resources, minimize open connections\
serverless\
auto scaling\
highly available (multi-AZ)\
no code change required\
never publicly accessed

## Elastic Cache
it manage redis or memcache

### Redis
multi-AZ\
read replicas\
data durability\
data durability\
backup and restore

### memcache
multi-mode for partitioning of data\
multi-threaded architecture

### Lazy loading/cache aside
read, bit fund in cache, write in cache

### Write through
write and cache\
it have to be combined with lazy loading

### TTL: cache eviction
cache was full\
explicit delete\
time-to-live

### MemoryDb for Redis
Redis-compatible, durable, in-memory database service\
ultra-fast\
durable in-memory with multi-AZ transactional logs\
scale from 10 GB to 100 TB

# Route S3

request:\
|Client| ------>|Route S3|
 	<------\
	   IP\
Records\
Each one contains\
domain/subdomain name:\
record type\
value\
routing policy\
ttl

## Record types
A: IP\
AAAA: IP6\
Cname: hostname map to another hostname\
	target must be A or AAAA\
NS: name servers

## Hosted Zones
public: contains records how route to traffic on the internet\
private within one on more VPC\
each host cost 0.50$ per month

## Record TTL
the client will have to cache the DNS result for the time\
if is high then, less traffic, but possible outdated records

## Cname vs alias
Cname\
	points a hostname to any\
	other hostname\
	not root domain\
Alias\
	points a hostname to a AWS resource\
	for root and not root domain\
	free of charge\
	native health check

## Route S3 Alias record
you can't set TTL\
is always A/AAAA

## Targets
ELB\
cloud front\
s3 websites\
api gateway\
elastic Beantalk\
VPC interface endpoints\
global accelerator\
route s3 in the same hosted zone\
you cannot set alias for EC2 DNS name

## Route s3 Routing Policies
how route s3 responds\
not the same as Load Balancer

## Routing Policies - Simple
typically route traffic to a single resource\
multiple values in the same record\
if multiple are returned a random will be chosen by the client

## Routing Policies - Weighted
control the % of requests to go to each specific resource\
assign a weight of 0 to a record to stop sending traffic, if all are 0, all will be return equally

## traffic(%) = weight of record/sum of all weight

## Routing Policies - Latency based
redirect to the resource that has least latency\
is based on traffic between users and AWS regions\
can be associated with health checks

## Route s3 - Health checks
for public resources\
it could be a health check of health checks\
they can monitor a cloud watch alarm\
about 15 HC will check the endpoint\
you can choose which location you want route s3 to use\
they can setup to pass/fail based on the first 5120 bytes of the response

## Calculate health checks
combine the results of multiple health checks\
with Or, And and Not

## Routing policies - Fail over
simple if unhealthy then use the secondary result

## Routing policies - Gedocation
we can define a location based result

## Geoproximity
route traffic based on the geographic location of users and locations\
more traffic on locations based on bias

## Routing policies - IP based routing
based on IP addresses\
you provide a list of CIDRs for your clients and the corresponding endpoints locations\
if optimize for specific ISP to specific endpoint

## Routing policies - Multi-Value
routing to multiple resources\
returns only for healthy resources\
up to 8 records\
not a substitute for ELB

## Domain register vs DNS service
you buy or register your domain name with domain register\
you can use another DNS service, Example: GoDaddy\
then you have to chain to route s3 the GoDaddy name servers

## VPC subnets primer
private network to deploy your resources

### Subnet
allows to partition your network inside your VPC\
public: accessible from the internet\
private: not accessible from the internet\
to define access to the internet and between subnets we use a route table

## Internet and NAT gateways
internet gateway VPC -> internet\
Public subnets have a route to the internet gateway\
not gateways: private subnets -> internet

## Network ACL
firewall for subnets, rules only include IP address\
stateless, inbound and outboud traffic

## VPC logs
capture information about the IP traffic

## VPC flow logs
capture information about the IP traffic\
helps to monitor connectivity

## VPC peering
connect two VPC, privately using AWS network\
as they were in the same network\
must not have overlapping ID

## VPC endpoint
connects AWS services using private network instead of public\
site to site VPN\
connect an on-premises VPN to AWS\
goes over the public internet\
direct connect\
physical connection between on-premises and AWS\
private, secure, fast\
private network\
takes at least a mount to establish

# Amazon S3

## Buckets
files in bucket\
globally unique name\
region level

## Objects
have a key\
the key is the full path\
	s3://my-bucket/my-file.txt\
max object size 5TB

## S3 - Security
User Base\
	IAM policies\
Resource Base\
	bucket policies\
	object access control list\
	bucket access control list\
if IAM principal allows it or the resource policy allows it -> IAM principal can access S3 object

## S3 Static website hosting
the URL will be: http://bucket.name.s3-website\
aws-region.amazon.aws.com

## S3 Versioning
hat to be enable on bucket level\
protects from unintended deletes

## S3 replication
by region Cross (CRR) - Single (SRR)\
copying async\
after you enable replication only new objects will be replicated\
for existing ones use s3-batch-replication

## S3 Storage classes
S3 Durability\
how many times an object will be lost\
S3 Avalability\
how many times the service works\
S3 Standard - General purpose\
use cases: big data, mobile, gaming, content distribution, standard-infrequent access, one zone infrequent access\
S3 infrequent access\
less frequent access but has to be fast\
use cases: backups if is not one-zoned then it can be use for disaster recovery

## S3 Glacier storage
low cost for archiving/backup\
pricing for storage object retrieval

## S3 Glacier deep archiving
cheaper than S3 Glacier

## S3 Intelligent Tiering
bases the tiering on the usage\
no retrieval charges\
small monthly free

## EC2 Instance metadata
EC2 instances to learn about themself\
	name \
	ip\
	IAM role

## MFA with CLI
you must create a temporary session\
with STS GetSession Token

## AWS SDK Overview
use AWS with programming\
use it when coding against AWS services such as DynamoDB

## AWS rate limits
EC2 has 100 per second\
GetObject on S3 5500 per second

## Service Quotas
1152 vCPU\
can be increase\
	open a ticket\
	using service quotas API

## Exponential Backoff
if you get ThrottlingException intermittently\
already include in AWS SDK API

## AWS CLI credentials provide chain
The CLI look for credentials;
+ command line options
+ ENV vars
+ CLI Credentials file
+ CLI Configuration file
+ Container credentials
+ Instance profile credentials

## AWS SDK default CPC
	java system properties\
	ENV vars\
	default credential profile file\
	ECS container credentials\
	Instance profile credentials

## Signing AWS API request
sign with your access key and secret key\
using HTTP header\
query String

## S3 Moving between storage classes
lifecycle rules\
	transition actions:\
		configure objects to transition to another storage class\
		move object to standard IAM class 60 days after creation\
		move to Glacier for archiving after 6 months\
	expiration actions:\
		configure objects to expire (delete) after some time\
Rules can be created on an preffix or for object tags

## S3 Analytics - Storage class analysis
help you decide when to transition objects\
report is updated daily

## S3 Event Notification
S3.ObjectCreated, S3.ObjectUpdate, S3.ObjectDelete\
Object name filtering\
unlimited amount of events\
needs IAM permissions to send the notifications or access policies for the receivers

## Event Bridge
collect all the events of s3 and deliver those to the service\
advance filtering with json\
you can archive, replay, reliable delivery

## S3 - Baseline performance
100-200 ms\
3500 req/s PUT, COPY, POST, DELETE\
5500 req/s GET, HEAD\
No limits to the number of preffix

## S3 - Performance
Multi-Part upload (parallel)

## S3 Transfer acceleration
it send file to AWS edgelocation, which forward the data\
compatible with Multi-Part

## S3 Byte-Range fetches
parallelize GET's by requesting specific byte ranges

## S3 Select and Glacier select
Retrieve less data using SQL by performing server\
side filtering\
less CPU costs on client side

## S3 - User-define object metadata and S3 object tags
must be named start with "x-amz-meta-"\
object tags: fine graining permission, analytics purpose\
they are used to build an index for data in a database

## S3 - Security
S3 - Object encryption\
4 methods\
server-side encryption\
	server-side amazon\
		S3-managed keys (default)\
		S3-manage KMS ket-stored in AWS KMS (own keys)\
		S3-manage with customer-provided keys\
	client-side encryption

## S3-KMS limitations
when upload, it calls the GenerateDataKey API\
when download, calls decrypt KMS API

## S3 - Customer provider keys
HTTPS must be used S3 does not store the key you provide\
encryption key must provided in HTTP headers, for every HTTP request made

## Default Encryption vs Bucket policies
auto apply encryption\
force encryption, refuse non-encrypted objects

## CORS: Cross-origin resource sharing
if client makes CORS request to our S3 bucket we have to set the proper CORS header

## MFA Delete
Multi-Factor Auth\
MFA for delete if you have versioning

## S3 Access Logs
the logging bucket has to be different from the original

## Pre-Signed URLs
give limited access to private bucket

## Access-Points
intermediate from users to S3 files of a bucket

### Example

AP1 ---- Bucket\
AP2 ---- Folder1\
        /\
       /\
      /\
     /\
    /\
AP3 ---- Folder2

can be only access from VPC

## Object Lambda
change the object before retrieve\
use S3 Object Lambda access point

# Cloud Front
content delivery network (CDN)\
improves read performance, content is cached at the edge\
protected against DDOS

## Cloud Font Origins
In S3 bucket can be used to upload data\
custom origin (HTTP)\
	ALB\
	EC2\
	S3 website\
	Any HTTP bucket

## Cloud front high level
it cache the answers\
one region content could be access for each edge location

### Differences with S3 Cross region
| Cloud Front               | S3 CRR                          |
|:__________________________|:________________________________|
| static content efficient  | must be set for each region     |
| cache by TTL              | read only                       |
|                           | files updated in near real time |
|                           | dynamic content efficient       |

## Cloud Front Caching
in each edge location\
use cached key, if not find is forward

## Cache key
unique id\
by default is hostname + resource of URL

## Cache policy

### Cache based on
http header\
cookie\
query string

can set the TTL

## Origin request policy
the values you want to include in origin request\
is basically an way to complete the request after take the cache

## Cache invalidation
you can invalidates the totality or partially independent of TTL\
Example you update the content

## Cache Behaviors
specific of content type or nature of request\
can be used to sign in page (cache behavior for login and for the others)

## ALB as Origin
we must have a security group

## Geo restriction
base on the country\
you can create a block list

## signed URL/signed cookies
URL per file/cookie for many files

## signed URL/S3 Pre-Signed URL
| Access to path no matter the origin | A request as a persign |
|:____________________________________|:_______________________|
| Caching features                    | use IAM key            |
| Filter IP-Path-date expiration      | limited lifetime|

## Generate keys
trusted key group\
AWS account with cloud front key pair (not recommend)

## Pricing
the cost varied by edge location

## Price Classes
All regions: more money\
200: exclude the expensive ones\
100: more exclusion 

## Multiple origins
path's for different files/content type

## Origin Group
increase availabbility\
creates secondary origin

## Field level encryption
the edge location\
the ppost request will send additional fields that will be encrypted

## Real time logs
analyse and take actions based on content delivery performance\
specific field and sample size

# Docker

## ECS - Amazon Elastic Container Service

## EC2 Launch type
launch docker on AWS = Launch ECS tasks on ECS cluster\
you must provision and mantain the infrastructure\
each EC2 must run the ECS agent to register to ECS cluster

## Fargate Launch type
you don't provision infrastructure\
all serveless\
you just create task definitions\
AWS runs ECS tasks based on the CPU/RAM you need

## IAM Roles for ECS
EC2 instance profile\
ECS task role\
allows each task to have a specific role

## Load Balancer integrations
ALB\
NLB: only recommended for high throughput/high performance cases\
CLB: not recommended

## EFS - ECS Data Volumes
mount EFS file system on ECS\
work also for Fargate\
use case: persist multi-AZ

## ECS service auto scaling

### Uses AWS application auto scaling:
CPU utilization\
memory utilization\
ALB request count per target

### Target Tracking
based on the value of some Cloud Watch

### Step Scaling
based on some Cloud Watch alarm

### Scheduled Scaling
based on an specific date time

ECS service auto scaling != EC2 auto scaling

## Fargate auto scaling is much easier to setup (serveless)

## EC2 Launch type - Auto scaling EC2 instance
Accommodate ECS Service by adding underlying EC2 instances

## Auto Scaling Group Scaling
Scale your ASG based on CPU utilization\
Add EC2 instance over time

## ECS Cluster Capacity Provider
automatically provision and scale your ECS task\
paired to ASG\
add EC2 instance when you're missing capacity (CPU, RAM, ...)

## EC2 Rolling Updates
we control how many tasks can be started and stopped, and the order

## ECS task definitions
task definitions are metadata in json, tells ECS how to run docker\
contains:
+ image name
+ port binding
+ memory and cpu required
+ ENV vars
+ network information
+ IAM role
+ logging configuration

can be define up to 10 containers for task definition

## ECS - Load balancing
we get a dynamic host port mapping if you define the container port in the task definition\
the ALB finds the right port on your EC2

## ECS Load Balancing (Fargate)
each task has an unique private IP\
only define container port

## one IAM role per task definition

## ECS ENV vars
hardcoded (URLs)\
SSM parameter store\
secrets manager

## Data volumes (Bind mounts)
share data between multiple containers in the same task definitions\
works for EC2 and Fargate

## ECS task placement
when a task of type EC2 is launched ECS must determine where to place it\
needs to determine which task to terminate\
similar when it scales, it has to figure up what task terminate\
are a best effort

### When ECS places task:
1. Identify the instance that satisfy the CPU, memory, port, etc
2. Identify the instances that satisfy taskplacement constrains
3. Identify the instance that satisfy the Task placement strategy

## ECS task placement strategies

### Binpack
place based on the least availabble amount of CPU or memory\
minimizes the number of instances in use

### Random

### Spread
based on the specified value\
example: instance ID, attribute: ecs.availabbility-zone

### Note
task placement strategies can be mix together

### Constrains
distinct instance: each task on different container instance

## ECR Elastic container registry
store and manage docker images on AWS\
integrated with ECS

## AWS Copilot
cli tool to build, release and operate production contanaized apps\
runs the apps on AppRunner, ECS and Fargate\
it set the infrastructure for you\
all required infrastructure for containerized apps (ECS, VPC, ELB, ECR, ...)\
automated deployment\
deploy to multiple envs

## EKS Elastic kubernnetes service
similar to ECS, different API\
support EC2 for Fargate deploy to serverless container\
use case: you use kubernnates and want to migrate to AWS

### EKS node types

#### Manage node group
create and manage nodes\
nodes are part of and ASG\
supports on-demand on spot instances

#### Self-manage nodes
you create\
you can use prebuild AMI\
supports the same as MNG

## AWS Fargate
no nodes to see

## EKS data volumes
needs storage class\
leverages a container storage interface (CSI)\
supports:
+ EBS
+ EFS
+ FSX for Lustre
+ FSX for net app

# Elastic Beanstalk
is a developer centric view of deployment an application on AWS, let's you thing in the architecture as if was code\
manage service, use all the components we see (EC2, ASG, EBL, RDS, ...)\
automatically handles capacity provisioning, load balancing, scaling, application, health monitoring, instance configuration, ...\
is free but you pay for the underlying instances\
uses CloudFormation under the hood

## Elastic Benstalk - Components

+ Application: collection of Elastic Beanstalk components
+ Application Version: iteration of your application code
+ Environment: collection of AWS resources running an application version

## Web Server Tier vs Worker Tier
| Web Server Tier | Worker Environment                                          |
|:________________|:____________________________________________________________|
| Use a ELB       | Use a SQS Queue                                             |
|                 | Scale based on the number of SQS messages                   |
|                 | Can push messages to SQS queue from another Web Server Tier |

## Elastic Benstalk Deployment modes
| Single instance | High Availability with Load Balancer |
|:________________|:_____________________________________|
| Great for dev   | Great for prod                       |

## Benstalk deployment options for updates
+ All at once: fastest, instances had downtime
+ Rolling: update a few instances at a time
+ Rolling with additional batches: like rolling but spins up new instances to move the batch
+ Immutable: spins up new instances in a new ASG
+ Blue Green: create a new environment and switch over when ready
+ Traffic Splitting: canary testing

## Benstalk Extensions
with .ebextensions folder

## Beanstalk Lifecycle Policy
Benstalk can store at most 1000 application versions\
you can phase out older ones:
+ based on time
+ based on space

## Beanstalk Cloning
clone environment with the exact same configuration\
will not preserve the data of the RDS

## Benstalk Migration: Load Balancer
you cannot change the LB type after creating a Benstalk\
to migrate:
1. create a new environment with same configuration except LB
2. deploy your application onto the new environment
3. perform a CNAME swao ir Route 53 update

## RDS with Benstalk
can be provisioned with Benstalk\
not great for prod cas database lifecycle is tied to the Benstalk environment lifecycle\
we can decouple RDS:
1. create a snapshot of RDS
2. go to the RDS console protect RDS from deletion
3. create a new Benstalk env without RDS, point to the existing RDS
4. perform a CNAME swap or Route 53 update
5. Terminate the old environment

# CloudFormation
All the manual work will be very tough to reproduce:
+ In another region
+ In another AWS account
+ Within the same region if everything was deleted

CloudFormation is infrastructure as code. Is a template for architecture\

## Example:
+ I want a security group
+ I want two EC2 machines using this security group
+ I want two Elastic IPs for these EC2 machines
+ I want an S3 bucket
+ I want a load balancer (ELB) in front of these machines

## Costs:
+ Is easy to estimate the costs
+ Saving strategy: In Dev, you could automation deletion of templates at 5 PM and recreated at 8 AM, safely

## Productivity:
+ Ability to destroy and re-create an infrastructure on the fly
+ Automated generation of Diagram for templates
+ Declarative programming

## Create many stacks for many apps:
+ VPC stacks
+ Network stacks
+ App stacks

Templates have to be uploaded in S3 and then referenced in CloudFormation. To update a template, we can't edit previous ones. We have to re-upload a new version of the template to AWS\

Manual: edit templates in the designer\
Automated: edit templates in a YAML file. Using AWS Cli to deploy\

## Template components:
### Resources 
EC2, ELB, ...\
AWS figures out creation, updates and deletes for us
### Parameters
A way to provide inputs to your CloudFormation template
### Mappings
Fix variables within your Cloudformation template, dev vs prod, regions, AMI types, ...
### Outputs
optional\
we can import into other stacks\
VPC ID and subnet IDs
### Conditions
use to control the creation of resources or outputs based on a condition (Region, ...)

## CloudFormation Rollbacks
+ Stack creation fails: everything rolls back, gets deleted
+ Stack update fails: roolsback to previous known working state

## CloudFormation Stack Notifications
send Stack events to SNS topic

## CloudFormation Stack Policies
during stack update, all update actions are allowed on all resources\
Stack policies is a json that defines what update actions are allowed
