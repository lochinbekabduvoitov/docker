# Base image
FROM python:3.11.2-slim

# Set working directory
WORKDIR /app

# Copy application files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Start the application
CMD [ "uvicorn" ,"app:app" ,"--host", "80.89.228.71","--port","8012","--reload" ]
