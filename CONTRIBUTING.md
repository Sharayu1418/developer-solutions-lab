# Contributing to Developer Solutions Lab

Thank you for your interest in contributing.

This is an experimental, community-driven project. Contributions are welcome as long as they are clear, reproducible, and aligned with the project scope.

## Clone Your Fork

First, fork this repository to your own GitHub account.

Then clone your fork locally:

```bash
git clone https://github.com/[your-github-username]/developer-solutions-lab.git
```

## Set Up Your Environment

Ensure your development environment is ready before making changes.

Typical requirements may include:

- Python 3.8+

- Node.js

- Conda (optional, for Python environments)

- Cloud access if required by the experiment (e.g. Azure or AWS)

Not all projects require all tools. Refer to the specific solution or lab documentation.

## Create a Branch
```bash
git checkout -b [branch-name]
```
Use a short, descriptive branch name.

## Make Changes and Validate
```bash
npm install
npm test
python -m unittest
```
If your contribution affects CI/CD pipelines or cloud experiments, ensure those workflows execute successfully.

## Commit and Push
```bash
git add .
git commit -m "Describe your change"
git push origin [branch-name]
```
Then open a pull request from your fork to the main repository.