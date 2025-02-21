# AWS Cloud Hosted Resume

## CodyLeeTech

A dynamic portfolio website designed to showcase my professional journey and technical expertise in cybersecurity and software development. This platform serves as both a personal resume and a practical demonstration of my growing skillset across various technologies and programming languages.

## Overview

The project is being developed iteratively, exploring different hosting solutions and implementation methods. Each iteration brings new features and improvements, reflecting my continuous learning and professional growth in the field.

## Current Architecture

This repository contains the infrastructure as code (IaC) for my personal website, built on AWS's cloud infrastructure. The architecture implements security best practices and leverages AWS's global content delivery capabilities.
Core Components

**Amazon S3**

* Separate buckets for main domain and subdomain hosting
* Static website content storage
* Access restricted through Origin Access Control (OAC)


**Amazon CloudFront**

* Global CDN for optimized content delivery
* Acts as the primary entry point for all web traffic
* Integrates with S3 through OAC for enhanced security
* Caches content at edge locations for improved performance


**Amazon Route 53**

* DNS management and routing
* Records configured to route traffic through CloudFront
* Enables high availability through global DNS infrastructure


**AWS WAF**

* Web Application Firewall implementation
* Geo-restriction policies aligned with CDN availability
* Enhanced security through request filtering



**Key Benefits**

* Performance: Global content delivery with minimal latency through CloudFront's edge locations
* Security: Multi-layered security approach including:
  * Origin Access Control (OAC) for S3 access restriction
  * CloudFront as the primary content gateway
  * WAF for request filtering and geo-restrictions
* Reliability: High availability through AWS's global infrastructure
* Cost-Efficiency: Optimized static content hosting with pay-as-you-go pricing

## Future State

Future plans include infrastructure management through Terraform, with exploration of deployment options on both EC2 instances and AWS Amplify platforms.



[![CodyLeeTech](https://img.shields.io/badge/-CodyLeeTech-purple?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCI+PHBhdGggZmlsbD0id2hpdGUiIGQ9Ik0xMiAyQzYuNDggMiAyIDYuNDggMiAxMnM0LjQ4IDEwIDEwIDEwIDEwLTQuNDggMTAtMTBTMTcuNTIgMiAxMiAyek0xMiAyMGMtNC40MiAwLTgtMy41OC04LThzMy41OC04IDgtOCA4IDMuNTggOCA4LTMuNTggOC04IDh6Ii8+PC9zdmc+)](https://codyleetech.com)
![Amazon S3](https://img.shields.io/badge/Amazon%20S3-FF9900?style=for-the-badge&logo=amazons3&logoColor=white)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white)
![Google Fonts](https://img.shields.io/badge/Google_Fonts-4285F4?style=for-the-badge&logo=google-fonts&logoColor=white)