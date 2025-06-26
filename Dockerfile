# Base image
FROM python:3.11-slim

ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
 && rm -rf /var/lib/apt/lists/*

# Set work directory
WORKDIR /app

# Copy requirements and install base packages
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Downgrade numpy to avoid PyTorch incompatibility
RUN pip install --no-cache-dir "numpy<2"

# Install torch with CPU support (v2.6+ is mandatory)
RUN pip install --no-cache-dir torch==2.6.0 torchvision==0.21.0 torchaudio==2.6.0 --index-url https://download.pytorch.org/whl/cpu

# Copy app code and expose port
COPY app.py .
EXPOSE 5000

# Run app
CMD ["python", "app.py"]
