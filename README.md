# aws-github-actions-prepare-template
This is a template for creating resources for deployment to AWS with GitHub Actions.  
(The contents of this repository assume manual deployment.)

The following three resources are to be created.

1. OIDC Provider: Define to Assume Role with OIDC
1. IAM Role: deploying CloudFormation Stack assuming by OIDC
1. IAM Role: deploying SSM Parameter assuming by OIDC
1. IAM Role: deploying CloudFormation Stack assuming in CloudFormation
1. S3 Bucket: Used to place artifacts such as Lambda deployment packages

## Rquirements
- awscli
- sam-cli

## How To
1. edit Makefile
   - Specify the CloudFormation Stack name at L3
   - Specify the GitHub Repository Prefix at L9
1. exec deploy
   - Execute `make deploy` to create a Stack
1. check resources
   - Execute `make describe` to get the ARN and other information about the resource to be used in GitHub Actions