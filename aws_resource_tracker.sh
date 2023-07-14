#!/bin/bash


#####################
# Author: Achintam
# Date: 14th-july
#
# version: 1.0.0
# This script will report the aws resource usage
#####################

set -x

# AWS S3
# AWS EC2
# AWS Lambda 
# AWS IAM

date

# list s3 buckets
echo "List of s3 buckets"
aws s3 ls

# list ec2 instances
echo "List of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda function
echo "List of lambda functions"
aws lambda list-functions

# list iam users
echo "List of iam users"
aws iam list-users
