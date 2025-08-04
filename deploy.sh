#!/bin/bash

# Simple Website Deployment Script
# Usage: ./deploy.sh <s3-bucket-name>

if [ $# -eq 0 ]; then
    echo "Usage: ./deploy.sh <s3-bucket-name>"
    echo "Example: ./deploy.sh my-website-bucket"
    exit 1
fi

BUCKET_NAME=$1

echo "Deploying website to S3 bucket: $BUCKET_NAME"

# Sync the website to S3 bucket (excluding .git directory)
aws s3 sync . s3://$BUCKET_NAME --exclude ".git/*" --exclude "deploy.sh" --exclude "CLAUDE.md" --exclude "bucket-policy.json" --exclude "gh_*" --region us-east-1

echo "Deployment complete!"
echo "Your website should be available at: http://$BUCKET_NAME.s3-website-us-east-1.amazonaws.com"
echo "Note: Make sure your S3 bucket is configured for static website hosting"