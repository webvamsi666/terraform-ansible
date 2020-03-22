# Building Repeatable Infrastructure with Terraform and Ansible on AWS

Many companies are still struggling with basic IT operations. They spend too much time putting out fires and manually building, configuring and maintaining infrastructure resulting in a considerable loss of capital that could have helped with the transformation of their company. I'm not saying that they should stop investing in IT operations, far from that but suggesting better planning could go a long way; you should consider spending more time developing your product than caring about the infrastructure and servers.  This blog post is aimed at shedding some light and recommend a plan moving forward with Disposable Infrastructure in a destructive and fast pace world.

Your ability to quickly build and dispose of your cloud infrastructure solutions will define how agile your business will be tomorrow. Digital transformation fuels and empowers rapid innovation and growth; this is it the way forward to remain relevant in an ever-changing world. Now, image if you could move at a higher velocity as you grow and evolve your infrastructure. I think this is possible with Disposable Infrastructure!

Embracing cloud solutions can drive business performance, cash flow, and other associated benefits. On top of that, you are no longer vendor lock-in you choose what makes more sense for your company while remaining flexible. Having to wait weeks or months for new infrastructure is not longer an option; as a result of that it easier to drive revolutionizing business outcomes.

Disposable Infrastructure is not another soup du jour and before you know fades in the constant IT buzz, the cloud is here to stay, whether you like it or not. To remain innovative and move ahead, you need cloud technology that seamlessly integrates multi-cloud initiatives. With that, you can achieve great things when you embrace Cloud technology and when you combine great tools and collaborate — adopting cloud and automation tools immediately lower barriers for making changes to infrastructure with the ability to scale to many types of clouds and manage heterogeneous information systems. This blog post suggested AWS (Amazon Web Services), but the same applies to the other Cloud providers, such as IBM, Microsoft, Google Cloud, DigitalOcean, Salesforce.com to name a few; but by far AWS is the most popular cloud infrastructure provider out there in addition to offering a generous **[free tier](https://aws.amazon.com/free/)** which allows you to run all of these examples for free.

## Disposable Infrastructure

What is **"Disposable Infrastructure"** also known as **"Immutable Infrastructure"**; Disposable Infrastructure is the process of _"Automating the process of provisioning, configuring, deploying, and tearing down cloud infrastructure and services."_;  whether you are dealing with development, staging, production, QA environments.

Often IT teams commonly struggle to keep their documentation relevant, useful, and accurate; using (IaC) **"Infrastructure as Code"** can help circumvent this constraint. Infrastructure as code is an approach that provides principles, practices, and patterns for using these technologies effectively with that you can increase your operational readiness, exponentially. The real strength of IaC is the process of managing IT infrastructure through definition files rather than interactive configuration tools combined with continuous integration and continuous delivery pipelines. The definition files are version controlled for better resource management and reproducibility. In the cloud world Infrastructure is broadly defined as code represented and composed of physical and virtual resources that support the flow, storage, processing, and analysis of data  that can rapidly deploy and scale applications; while in the real-world this is defined as Networks, Subnetworks, Firewalls, LoadBalancers, Storage, Public IPs, and DNS Entries. 

Infrastructure is composed of physical and virtual resources that support the flow, storage, processing, and analysis of data.


A high degree of automation can be achieved as shown by these use cases for Repeatable Infrastructure:
- Dymanic infrastructure
- Repeatable Processes (DevOps Automation)
- Self-Documented Systems and Processes
- Multi-Cloud Deployment
- Idempotent (making repeatedly REST API calls while producing the same result)
- Moving from stateful to stateless
- Scaling policy, reduce resources at night and scale back in the morning.
- Disposable Environments
- Resiliant platform
- Configuration Drift detection (avoid configuration drift at the infrastructure layer)
- Durability of data
- Software Defined Networking (SDN)
- Provision a new servers in minutes or seconds.


## Goals of Infrastructure as Code
IaC is about writing code that describes the infrastructure, similar to writing a program in a high-level language; it brings many benefits, and the most prevailing one is the dynamic infrastructure where resources can easily be created, destroyed, replaced, resized, and moved. Systems are designed to assume that the infrastructure will always be changing.  Based on the reproducibility principle where any action carried out on the infrastructure should be repeatable, fostering the culture of scripting and configuration management tools rather than manually making configuration changes or using one-off scripts to make infrastructure adjustments. The operations of infrastructure are managed instead of using the same rules and structures that govern code development—particularly when new server instances are spun up. Here are a few tangible benefits from adopting IaC:
- Adapt faster to changes and provide business value on-demand
- Build repeatable environments quickly, with little effort. (infrastructure documentation is always up to date, keeping a detailed audit trail for changes); with that, your infrastructure documentation is coupled with its implementation; thus, you can achieve:
	- Reproducibility
	- Disposability
	- Accessibility
	- Policy as Code (Cloud Governance)
	- Discipline
	- Idempotency
	- Scalability
- Tolerant to failure with dynamic infrastructure (effortlessly destroy and rebuild servers, most notably between dev and ops.)

## What is Terraform?

Terraform is a multi-cloud (IaC) Infrastructure as Code software by HashiCorp written in Go Language using (HCL) HashiCorp Config Language. An open source command line tool that can be used to provide an infrastructure on many different platforms and services such as IBM, AWS, GCP, Azure, OpenStack, VMware and more. By using a plugin-based model to support providers and provisioners, giving it the ability to support almost any service that exposes APIs. It is a cloud-agnostic tool that elegantly defines your IaC, simple and yet powerful; Terraform allows you to build complex, version controlled, collaborative, heterogeneous and disposable systems with very high productivity. It provides built-in dependencies between each tier that handle automatic provisioning of infrastructure, both in the public and private cloud.

## What is Ansible?

Ansible is an open-source software provisioning, (CM) Configuration Management, and application deployment, provisioning, and deployment tool acquired by Red Hat in 2015. It provides the ability through declarative language to describe system configuration; it uses YAML (YAML Ain’t Markup Language) a human-readable data serialization language syntax for expressing Ansible Playbooks. Ansible Playbooks are the building blocks for all the use cases of Ansible. Ansible uses SSH, with no agents to install on remote systems.  

## How to use Ansible with Terraform?

Leveraging Automation for a Disposable Infrastructure by making the right choice, let's understand the difference between  (IaC ) Infrastructure as Code **"Terraform"** and (CM) Configuration Management **"Ansible"** and how to use both Terraform and Ansible to provision an environment. Terraform lacks a native provisioning plug-in for Ansible, but it does not matter, we will show you a workaround to circumvent the challenge by using **local-exec** and **remote-exec** built-in provisioners.

Terraform is excellent at managing cloud services below the server. While its strength is with the provisioning of infrastructure at scale, it is excellent for the initial server setup, primarily infrastructure while delegating configuration tasks to Ansible; Ansible is a lot easier to configure for software setup. Terraform is excellent for the provision of the infrastructure. Once in place then use Ansible to achieve the goals of an automated enterprise—through complimentary security, image management, post provisioning configuration, and integrated end to end automation solutions. The diagram below depicts a scenario where it uses Terraform to provision the infrastructure and Ansible for configuration management all on AWS Cloud.

Terraform is used to create, manage, and manipulate infrastructure resources. Examples of resources include physical machines, VMs, network switches, containers, etc. Almost any infrastructure noun can be represented as a resource in Terraform.

- Terraform will provision infrastructure like EC2 instances,  Security Goups, ELB and VPC into AWS IaC
- Ansible will deploy/test application on EC2 instance as CM like Jenkins and GitLab

![Server Provisioning with Vagrant and VirtualBox](./images/aws_terraform_ans_v1.png)

**FIGURE 1: Server Provisioning with Terraform and Ansible.**

Few things to know before diving in for each to the software used:

- **Terraform**
  - Infrastructure scaffolding (logical "environment", servers, network, storage, etc.)
  - Inbuilt state management (tracks the state of your infrastructure and the impact)
  - Declarative style execution (code that specifies your desired end state)
  - Does not rollback on failure (if some part of your deployment fails unfortunately it does not know how to roll back the changes).
  - Maintains the version history of the infrastructure
  - Use a client-only architecture

- **Ansible**
  - Procedural describes an application that requires the exact steps to be laid out in the code. 
  - It’s procedural language (step-by-step) application using YMAL
  - Deploy once and you are done, unless you run it again and the outcome is Idempotent
  - It's agent-less and uses SSH communication
  - Use a client-only architecture


Let's dive into the details and actualize the scenario: dynamic infrastructure must be treated as a first class citizen in any cloud project; you can deploy the same infrastructure in development, test and production environments; the sizing can be parameterize.

With IaC to provisioning infrastructure using scripts/tools instead of manually configuring machines.
Simple words:

- Provisioning the full life-cycle management by running `terraform apply`
  - Creating: resources with a plus sign (+) are going to be created <span style="color:green"> **(in green)**</span>
  - Updating: resources with a tilde sign (~) are going to be modified <span style="color:orange"> **(in amber)**</span>
  - Deleting: resources with a minus sign (-) are going to be deleted <span style="color:red"> **(in red)**</span>

In the next section, more will be discussed around create, update and delete of resources, by applying `terraform plan` ,`terraform apply`  and `terraform destroy` and leveraging `ansible-playbook` (Ansible Playbooks to manage the life-cycle of the application).

## Setting up the environment:
This guide assumes that you already have some understanding of AWS and have a working account. The installation of Terraform and Ansible are straightforward, and the details are at this link.

### Prerequisites:

- [AWS CLI](https://github.com/devopsmonks/terraform-ansible/blob/master/artifacts/scripts/install_software.sh) (Install AWS CLI)
- [Terraform](https://github.com/devopsmonks/terraform-ansible/blob/master/artifacts/scripts/config_software.sh) (Install Terraform)
- [Ansible](https://github.com/devopsmonks/terraform-ansible/blob/master/artifacts/scripts/install_software.sh) (Install Ansible)

Spinning up an instance on AWS

- Open AWS Account
- Create IAM admin user (*terraform_iam_user*)

AWS has its deployment tool called CloudFormation, but my obvious choice is for a generic and Terraform for the part.

Have aws-cli installed and AWS configured with secret keys then run `aws configure --profile terraform_iam_user` (this is my account, you need to create your  secret key for this to work, in this example my key is <span style="color:grey">*terraform_iam_user*</span>)

![Create AMI new user in AWS](./images/aws_configure.png)

**FIGURE 2: AWS credentials**

I have uploaded the source code to a GitHub repo at this [location](https://github.com/devopsmonks/terraform-ansible) for you to follow along should you see the need to put this to the test.

To summarize, we will be building the below components for you to follow along:
- Create AWS account
- Create AMI new user in AWS
- Configure AWS credentials (cat .aws/config)
    Have aws-cli installed and aws configured with secret keys
    A key pair for EC2 instances

### Defining SSH key-pair files

The SSH key-pair files defined here will be used in the Terraform to connect to the EC2 instances with this credential. Intentionally, all components use the same certificate  for ease of use, but you can have different ones if required.

```sh
$ ssh-keygen -t rsa -b 2048 -f ~/.ssh/MyKeyPair.pem -q -P ''
$ chmod 400 ~/.ssh/MyKeyPair.pem
$ ssh-keygen -y -f ~/.ssh/MyKeyPair.pem > ~/.ssh/MyKeyPair.pub
```

All the moving parts pertinent to the configuration are now settled for us to get started with the implementation.

## Let's get started:

Lets get our hands dirty. Installing Terraform, Ansible and the AWS CLI
Ideas like immutable infrastructure, repeatable processes, and deterministic results. 
we are using Terraform for infrastructure, Ansible for provisioning and AWS for hosting


### local-exec and remote-exec:

These two built in provisioners local-exec and remote-exec are required for Ansible to work in Terraform, as Terraform lacks the necessary native plug-ins. This is the workaround to invoke Ansible within the local-exec provisioner. That requires to **configure** the connection with the host,  user, and private_key, see resource.tf for more details.

#### remote-exec

Python is required for Ansible to work, by using the "**remote-exec**" it makes sure that Python is installed before it's possible to invoke "**local-exec**"; the snippet of code is extracted from resources.tf file.


#### local-exec

For Ansible, you can first run the Terraform, and output the IP addresses, then run ansible-playbook on those hosts. The code snippets have been simplified.  The code snippet is extracted from the resources.tf file. Please refer to the code repository for the complete solution. 

## Deploy application

Terraform has four essential commands that allow us to deal with an end-to-end workflow:

- terraform init

- terraform plan

- terraform apply

- terraform destroy

We’ll walk you through the entire process, step-by-step:

**1)** Download from https://github.com/devopsmonks/terraform-ansible.

```sh
$ git clone https://github.com/devopsmonks/terraform-ansible && cd Terraform-Ansible
```

**2)** Explore the directories and get yourself familiar with the code, go over each file and understand how they all work together (reserve 30 minutes for this exercise), make changes where you deem necessary:

```sh
vagrant@software:~/Terraform-Ansible$ tree
.
├── artifacts
│   ├── config
│   │   └── config_multi-nodes.yaml
│   ├── playbooks
│   │   ├── install_gitlab.yaml
│   │   ├── install_java.yaml
│   │   └── install_jenkins.yaml
│   ├── scripts
│   │   ├── config_software.sh
│   │   ├── install_software.sh
│   │   └── ssh_pass.sh
│   ├── templates
│   │   ├── install_busybox.sh
│   │   ├── install_jenkins.sh
│   │   ├── install_nginx.sh
│   │   └── user_data.sh
│   └── terraform
│       ├── outputs.tf
│       ├── provider.tf
│       ├── resources.tf
│       ├── terraform.tf
│       └── variables.tf
├── images
│   ├── aws_configure.png
│   ├── aws_terraform_ans v1.png
│   └── jenkins-ci.png
├── install.sh
├── README.md
└── Vagrantfile

```

**3)** Prepare the ssh key required (public and private keypair), issue the below commands:

```sh
$ ssh-keygen -t rsa -b 2048 -f ~/.ssh/MyKeyPair.pem -q -P ''
$ chmod 400 ~/.ssh/MyKeyPair.pem
$ ssh-keygen -y -f ~/.ssh/MyKeyPair.pem > ~/.ssh/MyKeyPair.pub
```

**4)** Prepare your profile key, make sure you have already created your AWS account

```sh
vagrant@software:~/Terraform-Ansible$ aws configure --profile terraform_iam_user
AWS Access Key ID [****************PYQA]:
AWS Secret Access Key [****************7lOb]:
Default region name [ap-southeast-1]:
Default output format [json]:
```

**5)** terraform init to download the necessary provider file:

```sh
vagrant@software:~/Terraform-Ansible$ cd artifacts/terraform/
vagrant@software:~/Terraform-Ansible/artifacts/terraform$ terraform init

Initializing provider plugins...
- Checking for available provider plugins on https://releases.hashicorp.com...
- Downloading plugin for provider "aws" (2.3.0)...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.aws: version = "~> 2.3"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.

```

**6)** terraform plan

```sh
vagrant@software:~/Terraform-Ansible/artifacts/terraform$ terraform plan

vagrant@software:~/Terraform-Ansible/artifacts/terraform$
```

**7)** terraform apply (make sure you have checked all the files and made the appropriate changes before running this command )

```sh
$  terraform apply -auto-approve 
vagrant@software:~/Terraform-Ansible/artifacts/terraform$ terraform apply -auto-approve
```

**few minutes later Jenkins server is provisioned.**

This proves that the automated is fully working!

![Jenkins installed](./images/jenkins-ci.png)

## Tear down

The `terraform destroy` command should ask you to verify that you want to destroy the infrastructure. Terraform only accepts the literal "yes" as an answer as a safety mechanism. Once entered, Terraform will go through and destroy the infrastructure. But you also have the option where you can automate the destroy function by passing the argument -auto-approve, this can be very handy when it comes to process automation.

As this is an **Immutable Infrastructure** you can go ahead and delete without worries, you can rebuild based your artifacts, the same code that built it will be used to destroy it, that is at the essence Infrastructure as Code where the predictable state is maintained.

```sh
# destroy all with this command
$ terraform destroy -auto-approve

# You can also use the command below, the outcome is the same.
$ echo "yes" | terraform destroy 

# exit the vagrant machine
$ exit

# suspend the vagrant virtual machine 
$ vagrant suspend
```


## References
For more details on Ansible and Terraform, refer to the reference section below where you can find many Terraform code templates from the references below that I have highlighted and a few posts I urge you to visit to gain the most out this blog post.

* [Deploying an application to AWS with Terraform and Ansible – Part 1](https://robertverdam.nl/2018/09/03/deploying-an-application-to-aws-with-terraform-and-ansible-part-1-terraform/)
* [Deploying an application to AWS with Terraform and Ansible – Part 2](https://robertverdam.nl/2018/09/22/deploying-an-application-to-aws-with-terraform-and-ansible-part-2-ansible/)
* [Combine Ansible & Terraform](https://jite.eu/2018/7/16/terraform-and-ansible/)
* [Using Ansible with Terraform](https://getintodevops.com/blog/using-ansible-with-terraform)
* [How to use Ansible with Terraform](https://alex.dzyoba.com/blog/terraform-ansible/)
* [Introduction to Terraform with AWS elb & nginx](https://www.bogotobogo.com/DevOps/DevOps-Terraform.php)
* [Provisioning EC2 key pairs with terraform.](https://ifritltd.com/2017/12/06/provisioning-ec2-key-pairs-with-terraform/)
* [Terraform: An Answer to Cloud Scalability?](https://medium.com/quick-code/terraform-an-answer-to-cloud-scalability-844c3182e9a)
* [Blue/Green Infrastructure with Terraform](https://hackernoon.com/blue-green-infrastructure-with-terraform-d5f9e8f79ed4)
* [An Introduction to Terraform](https://blog.gruntwork.io/an-introduction-to-terraform-f17df9c6d180)
* [Terraform Hello World demo](https://github.com/npalm/tf-helloworld-demo)
* [Install packages to Amazon Virtual machine using terraform](https://geekdudes.wordpress.com/2018/01/09/install-packages-to-amazon-virtual-machine-using-terraform/)
* [Setting Up an AWS EC2 instance with SSH access using Terraform](
https://medium.com/@hmalgewatta/setting-up-an-aws-ec2-instance-with-ssh-access-using-terraform-c336c812322f)
* [Running local-exec provisioner on all EC2 instances after creation](https://stackoverflow.com/questions/44436985/running-local-exec-provisioner-on-all-ec2-instances-after-creation)
* [Infrastructure as Code](https://www.oreilly.com/library/view/infrastructure-as-code/9781491924334/ch01.html)

