<div>
<img src="./setupFiles/readme-imgs/main.png" />

<h2 align="center">ThunderCats Project 3</h2>

# This repo contains the necessary files to deploy a basic web application using AWS Amplify.
</div>
<br/>

## Prerequisites
1. This code requires the use of:
    -AWS Amplify to host the website
    -DynamoDB Table to store our data
    -Lambda function to add data to DB table (Python 3.8 runtime)
    -API Gateway to interact with the Lambda Function.

2. There are support files included in the setupFiles folder that include:
    -the lambda code
    -a provisioning playbook in YAML for CloudFormation
    -permissions for the Lambda function (to be added to the Lambda execution role)
    
## Project Objectives
- Create a multi-tier architecture in AWS utilizing Infrastructure as Code tools (Terraform).
- Implement CI/CD pipelines for real-time updates to the infrastructure.
- Develop a visual presentation with network diagrams/architecture.
- Establish a Jira Dashboard and Roadmap to track team tasks, organization, and progress through the Software Development Life Cycle (SDLC).

## Project Components
- **Infrastructure as Code (IaC):** Utilize Terraform to define and provision AWS resources programmatically.
- **CI/CD Pipelines:** Implement Amplify and Cloudfront for automated building, testing, and deployment of infrastructure changes.
- **Presentation:** Create a visual representation of the architecture with detailed network diagrams.
- **Jira Dashboard:** Set up a Jira Dashboard and Roadmap to manage and monitor team tasks and progress.

## Project Steps
1. Analyze the existing on-premises infrastructure.
2. Design and implement the multi-tier architecture in AWS using Terraform.
3. Set up CI/CD pipelines with CodePipeline for automated updates.
4. Develop a visual presentation illustrating the architecture and migration plan.
5. Create a Jira Dashboard and Roadmap to track tasks and team progress.

## Usage
1. Clone this repository.
2. Navigate to the respective folders for Terraform code and CI/CD configurations.
3. Follow the instructions in each directory's README for detailed setup and execution steps.
4. Use Jira Dashboard to monitor progress and manage tasks.

## Structure
- `/terraform`: Contains Terraform code for infrastructure provisioning.
- `/ci-cd`: Includes configurations and scripts for CI/CD pipelines.

## Resources
- AWS Documentation: [link]
- Terraform Documentation: [link]
- Jira Documentation: [link]

## Contributors
- Marcus Donovan
- Keihma Moore
- Ethan Yerigan
- Dave Rino
- Gavin Marts

## Acknowledgments
We acknowledge the support and guidance provided by Dave Lazaro (Almighty Dave) during the development of this project.
