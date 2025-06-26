# 🚀 MLOps Translation App

This project demonstrates an end-to-end **MLOps pipeline** for deploying a machine translation model using Docker and Kubernetes, with mock CI/CD and monitoring components.

## 📌 Objective

Build a containerized inference service for a Hugging Face model, deploy it locally, and simulate a production-ready ML Ops workflow with logging and redeployment stubs.

---

## 🧠 Model Used

- **Hugging Face Pipeline**: `translation_en_to_de`
- **Pretrained Model**: [`Helsinki-NLP/opus-mt-en-de`](https://huggingface.co/Helsinki-NLP/opus-mt-en-de)

---

## 🚀 Quick Start

```bash
# Clone the repo
git clone https://github.com/adlibalibi/mlops.git
cd mlops

# Build and run the Docker container
docker build -t mlops-translation-app .
docker run -p 5000:5000 mlops-translation-app

# Test the API
curl -X POST http://localhost:5000/translate \
     -H "Content-Type: application/json" \
     -d '{"text": "Hello, how are you?"}'

# Expected:
[{"translation_text": "Hallo, wie geht es dir?"}]


