# Dockerfile for RKG microservice

# Use official Python image as base
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy Python dependencies file
COPY RKG-Service/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy microservice code
COPY RKG-Service/ .

# Expose port the app will run on
EXPOSE 5000

# Command to run the microservice
CMD ["python", "app.py"]

