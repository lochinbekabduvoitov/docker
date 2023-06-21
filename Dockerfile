# Base image
FROM python:3.11.2-slim

# Set working directory
WORKDIR /code

# Copy application files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r ./requirements.txt


EXPOSE 3011

# Start the application
CMD [ "uvicorn" ,"src.app:app" ,"--host", "80.89.228.71","--port","3011","--reload" ]
