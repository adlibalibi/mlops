# mlops
# 🛠️ ML Ops Translation Inference Pipeline

This project is a demonstration of a containerized ML inference pipeline for the ML Ops Engineer Internship task. It uses a Hugging Face transformer model (`Helsinki-NLP/opus-mt-en-de`) served via Flask, containerized with Docker, and mock-deployed with Kubernetes along with monitoring and CI/CD plans.

## 🚀 Quick Start

```bash
# Clone the repo
git clone https://github.com/adlibalibi/mlops.git
cd mlops

# Build and run the Docker container
docker build -t mlops-translation-app .
docker run -p 5000:5000 mlops-translation-app
