# Intro to Ansible

[course link](https://cloudacademy.com/course/what-is-configuration-management/general-concepts-1/?context_id=23&context_resource=lp)

## What is Configuration Management?

Configuration management is the process of maintaining the state of a system in a consistent and predictable way. This is done by defining the desired state of the system and then configuring the system to match that state. Configuration management is a key part of infrastructure as code, which is the practice of managing infrastructure through code rather than through manual processes.

## Tools used for Configuration Management

- Chef
- Puppet
- Cloudinit
- Terraform
- CloudFormation
- Docker
- Salt Stack

Automed Controls of

- Deployed artifacts
- Configuration files
- System Packages
- Services
- Dependencies

Configuration is stored in code and can be version controlled

## Why use it

- Source of truth
- VCS
- Reproducible configurations and infrastructure deployments

## CMS Automation Concepts

Methods of configuration management:

- Resources are destroyed and recreated(immutable)
- Changes are made idempotent over a resource and converge to the desired state

> Idempotent means: denoting an element of a set which is unchanged in value when multiplied or otherwise operated on by itself.

## Idempotency

- Automated configuration scripts produce the exact same result every time they are run
- Configuration changes occur "in place"
- Only if a resource does not match requirements is it changed
- There is no fear of breaking existing resources
- Ansible and Chef are idempotent CMS's

## Convergence

- Ability to successfully modify or restore a resource when necessary
- When resources diverge over time convergence brings these resources back to specification
- A node is said to have "converged" when resources are changed in this manner

## Immutability

- The concept that resources are to be created and destroyed; never changed
- Immutable infrastructure is similar to the blue/green deployment concept
- Terraform and Cloud Formation work in this manner

## Available Solutions

- Ansible
  - Idempotent model
  - Ability to provision cloud infrastructure
  - "State-less", no agent required
  - Requires only SSH and Python, can run on most Linux/BSD systems
  - Agent is available for large farm deployments
- Chef & Puppet
  - Idempotent model
  - Client/Server or Host only models
  - Works on the instance or host level
  - Ruby-based solution and DSLs
- Cloudinit
  - Cloud agnostic.
  - Immutable resource management model
- Terraform
  - Immutably managed instance infrastructure
  - Idempotent model for non-instance infrastructure
  - Performs CMS thru userdata or cloudinit for its instance
  - Maintains state via a local file
  - Also supports state maintenance via consul or etcd
  - Cloud agnostic
- CloudFormation
  - Immutably managed instance infrastructure
  - Idempotent model for non-instance infrastructure
  - Native AWS tool
  - JSON-based "instructions" for infrastructure creation
  - Leverages userdata and cloudinit for instance configuration management
- Docker
  - Containerization solution
  - Immutable model
  - Containers are controlled and configured by a single file
  - Immutable containers is a basis for microservices
  - Provisioning of containers through Docker Machine
  - Cloud agnostic
- SaltStack
  - Idempotent model
  - Python-based
  - Does not require a client
  - Still supports classic client/server model
  - Support for popular Cloud providers

## Development Tools

- Continuous Integration and Delivery
  - Concept of fast, accurate feedback on code for production
  - Automated deployment to production
  - Commit often, release often strategy
  - Tools:
  - Jenkins
  - Team City
  - Bamboo
  - CircleCl
