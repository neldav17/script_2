#!/bin/bash

# Description: script to create ec2 in centos machine
# Author: Nelly F
# Date: 10/28/2023

# Define your AWS configuration parameters
AWS_REGION="us-east-1"
INSTANCE_TYPE="t2.micro"
KEY_NAME="your-key-pair-name"
SECURITY_GROUP_ID="your-security-group-id"
AMI_ID="ami-0b0a3f13fbb05a77a"  # CentOS 7 AMI ID (us-east-1)

# Launch the EC2 instance
aws ec2 run-instances \
    --region $AWS_REGION \
    --image-id $AMI_ID \
    --count 1 \
    --instance-type $INSTANCE_TYPE \
    --key-name $KEY_NAME \
    --security-group-ids $SECURITY_GROUP_ID

# You can add more parameters, such as user data, EBS volumes, and tags as needed.


