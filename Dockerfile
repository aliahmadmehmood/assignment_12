FROM python:3.9-slim

# Set environment variables

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Libraries
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    libssl-dev \
    libffi-dev \
    libxml2-dev \
    libxslt1-dev \
    zlib1g-dev \
    libpq-dev && \
    rm -rf /var/lib/apt/lists/*

#RUN mkdir -p /var/log/gunicorn && \
#    chown -R www-data:www-data /var/log/gunicorn

# Set the working directory in the container

WORKDIR /app

# Copy the dependencies file to the working directory

COPY requirements.txt requirements.txt

# Install any needed packages specified in requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the working directory

COPY . .

# Expose port 8000 to allow external access

EXPOSE 5000

# Command to run the Flask application using Gunicorn

CMD ["gunicorn", "-w", "4", "-k", "gevent", "-b", "0.0.0.0:5000", "wsgi:app"]

