# Amplify App
![Logo](logo.png)

This project demonstrates deploying a simple application using AWS Amplify and Terraform. The goal is to showcase how to set up and manage an AWS Amplify app with infrastructure as code.

## Project Overview

This project creates an AWS Amplify app using Terraform. The app will deploy a webpage, with infrastructure managed as code.

## Setup and Installation

To set up and deploy the project, follow these steps:

1. **Set up AWS credentials:**
   Ensure that your AWS CLI is configured with the necessary credentials and permissions. You can set up your AWS credentials using:
   ```bash
   aws configure
   ```

2. **Set the GitHub access token:**
   Ensure you have a valid GitHub access token with the necessary permissions. Set this token as a variable when applying the Terraform configuration.

3. **Apply the Terraform configuration:**
   - Initialize Terraform:
     ```bash
     terraform init
     ```
   - Apply the configuration with the access token:
     ```bash
     terraform apply -var "access_token=your_github_access_token" -var "repo=https://github.com/your-username/your-repo"
     ```
   - Replace `your_github_access_token` with your actual GitHub access token and `https://github.com/your-username/your-repo` with your repository URL. When prompted, type "yes" to confirm the changes.


## Deployment

The Terraform configuration will create an AWS Amplify app and connect it to the specified GitHub repository. The configuration includes:

- **Amplify App:** A new Amplify app with the name "HelloWorldApp".
- **Amplify Branch:** A branch named "main" that automatically deploys changes from the GitHub repository.

## Usage

After applying the Terraform configuration, the application will be accessible at the URL provided by AWS Amplify. The app will automatically deploy changes pushed to the `main` branch of the GitHub repository.

## Contributing

If you wish to contribute to this project, please follow these steps:

1. Fork the repository.
2. Create a new branch: ```git checkout -b feature-branch-name```
3. Make your changes and commit them: ```git commit -m 'Add some feature```'
4. Push to the branch: ```git push origin feature-branch-name```
5. Open a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
