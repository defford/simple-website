# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview
This is a simple static website project with basic HTML content, designed for deployment to AWS S3 for static web hosting.

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
- Deploy to S3: `./deploy.sh <bucket-name>`
  - Example: `./deploy.sh my-website-bucket`
  - Requires AWS CLI to be configured with appropriate permissions
  - Excludes .git directory and deployment files automatically

## Project Structure
- `index.html` - Main website page
- `deploy.sh` - S3 deployment script
- `.git/` - Git repository data

## AWS S3 Hosting Setup
To host this website on S3:
1. Create an S3 bucket with a web-friendly name
2. Enable static website hosting on the bucket
3. Set bucket policy for public read access
4. Use the deployment script to sync files

## GitHub Integration
To create a GitHub repository:
1. Authenticate with GitHub CLI: `gh auth login`
2. Create repository: `gh repo create simple-website --public --source=. --remote=origin --push`
3. Push changes: `git push origin main`