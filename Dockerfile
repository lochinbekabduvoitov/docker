# Base image
FROM python:3.11.2-slim

# Set working directory
WORKDIR /code

# Copy application files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 8000

# Start the application
CMD [ "python", "main.py" ]
