# AWS Cloud Hosted Resume

## CodyLeeTech

A dynamic portfolio website designed to showcase my professional journey and technical expertise in cybersecurity and software development. This platform serves as both a personal resume and a practical demonstration of my growing skillset across various technologies and programming languages.

## Overview

The project is being developed iteratively, exploring different hosting solutions and implementation methods. Each iteration brings new features and improvements, reflecting my continuous learning and professional growth in the field.

## Current Architecture

My personal website leverages AWS's cloud infrastructure with the following architecture:

The website content is stored in Amazon S3 buckets, with separate buckets handling the main domain and subdomain. To enhance performance and security, Amazon CloudFront acts as a Content Delivery Network (CDN) to cache and serve the website content globally. Amazon Route 53 manages the DNS configuration, with its records directing traffic to the CloudFront distributions rather than directly to the S3 buckets. Access to the S3 buckets is restricted using Origin Access Control (OAC), ensuring that content can only be accessed through CloudFront, adding an additional layer of security.

This architecture provides:

* Global content delivery with low latency
* Enhanced security through controlled access patterns
* High availability and reliability
* Cost-effective static website hosting

## Future State




[![CodyLeeTech](https://img.shields.io/badge/-CodyLeeTech-purple?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCI+PHBhdGggZmlsbD0id2hpdGUiIGQ9Ik0xMiAyQzYuNDggMiAyIDYuNDggMiAxMnM0LjQ4IDEwIDEwIDEwIDEwLTQuNDggMTAtMTBTMTcuNTIgMiAxMiAyek0xMiAyMGMtNC40MiAwLTgtMy41OC04LThzMy41OC04IDgtOCA4IDMuNTggOCA4LTMuNTggOC04IDh6Ii8+PC9zdmc+)](https://codyleetech.com)
![Amazon S3](https://img.shields.io/badge/Amazon%20S3-FF9900?style=for-the-badge&logo=amazons3&logoColor=white)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white)
![Google Fonts](https://img.shields.io/badge/Google_Fonts-4285F4?style=for-the-badge&logo=google-fonts&logoColor=white)