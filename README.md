# RKG Microservice

This is a Python microservice created to demonstrate automated CI/CD deployment with Docker and Kubernetes. The microservice itself does not implement any actual business logic; it serves as a template for deploying microservices using modern DevOps practices.

---

## Project Structure

RKG-Microservice/
├── RKG-Service/
│ ├── app.py # Python microservice code
│ └── requirements.txt # Python dependencies
├── k8s/
│ ├── rkg-micro-deployment.yaml
│ └── rkg-micro-service.yaml
├── .github/
│ └── workflows/
│ └── rkg-cicd-pipeline.yml
├── Dockerfile
├── README.md
└── .gitignore



---

## How to Run Locally

```bash
# Install Python dependencies
pip install -r RKG-Service/requirements.txt

# Run the microservice
python RKG-Service/app.py

The microservice will be available at http://localhost:5000


## CI/CD Pipeline

Triggered automatically on push to the main branch.

Builds Docker image and tags it with the latest version (or commit SHA).

Deploys to Kubernetes cluster using rkg-micro-deployment.yaml and rkg-micro-service.yaml.

#Suggestions & Improvements

Use Git commit SHA for Docker image versioning instead of latest.

Separate environments for dev/staging/prod using Kubernetes namespaces.

Add automated tests before deployment to ensure stability.

Include logging and monitoring for production readiness.

#Notes

The microservice is intentionally minimal to focus on CI/CD demonstration.

GitHub Actions workflow is used, but this can easily be adapted for GitLab CI/CD.

