# Use Python base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire application
COPY . /app

# Expose Flask port
EXPOSE 5000

# Start the Flask app
CMD ["python", "app.py"]
