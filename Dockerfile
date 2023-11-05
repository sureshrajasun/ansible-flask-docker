# Use an official Python runtime as the base image
FROM python:3.8-slim-bullseye
ENV ANSIBLE_VERSION 2.9.17

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory (our Flask app) into the container at /app
COPY . /app

# Install Flask and other dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

RUN pip3 install --upgrade pip; \
    pip3 install "ansible==${ANSIBLE_VERSION}"; \
    pip3 install ansible

# Make port 5000 available for the app
EXPOSE 8090

# Run the command to start the Flask app
CMD ["flask", "run", "--host=0.0.0.0", "--port=8090"]
