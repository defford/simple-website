# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview
This is a simple static website project with basic HTML content, successfully deployed to AWS S3 for static web hosting.

**Live Website:** http://mobile-cc-test.s3-website-us-east-1.amazonaws.com  
**GitHub Repository:** https://github.com/defford/simple-website

## Development Commands

### Local Development
- View the website: Open `index.html` in a web browser
- No build process required for this simple static site

### Git Operations
- Check status: `git status`
- Add changes: `git add .`
- Commit changes: `git commit -m "Description of changes"`
- View history: `git log --oneline`

### Deployment
- Deploy to S3: `./deploy.sh mobile-cc-test`
  - Requires AWS CLI to be configured with appropriate permissions
  - Excludes .git directory and deployment files automatically
  - Current deployment: http://mobile-cc-test.s3-website-us-east-1.amazonaws.com

## Project Structure
- `index.html` - Main website page
- `deploy.sh` - S3 deployment script
- `bucket-policy.json` - S3 bucket policy for public access
- `CLAUDE.md` - This documentation file
- `.git/` - Git repository data

## AWS S3 Hosting Setup
This website is already configured and deployed to S3 bucket `mobile-cc-test`. For reference, the setup process was:

1. ✅ Created S3 bucket `mobile-cc-test`
2. ✅ Enabled static website hosting: `aws s3 website s3://mobile-cc-test --index-document index.html --region us-east-1`
3. ✅ Disabled public access blocks: `aws s3api put-public-access-block --bucket mobile-cc-test --public-access-block-configuration BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=false,RestrictPublicBuckets=false --region us-east-1`
4. ✅ Applied public read policy using `bucket-policy.json`
5. ✅ Deployed files using `./deploy.sh mobile-cc-test`

**Current Status:** Live at http://mobile-cc-test.s3-website-us-east-1.amazonaws.com

## GitHub Integration
This project is already connected to GitHub:

**Repository:** https://github.com/defford/simple-website

To push future changes:
1. Make your changes
2. `git add .`
3. `git commit -m "Description of changes"`
4. `git push origin main`