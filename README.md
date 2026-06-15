# Cloud Run with CI/CD

This project demonstrates how to deploy a Spring Boot application to Google Cloud Run using GitHub Actions CI/CD.

## Technologies Used

* Java 17
* Spring Boot
* Maven
* Docker
* Google Cloud Run
* GitHub Actions

## Prerequisites

* Java 17
* Maven 3.9+
* Docker
* Google Cloud SDK
* Google Cloud Project

## Build the Application

```bash
mvn clean package
```

The generated JAR will be available in:

```text
target/learning-cloud-run-1.0.0.jar
```

## Run Locally

```bash
java -jar target/learning-cloud-run-1.0.0.jar
```

Application URL:

```text
http://localhost:8080
```

## Build Docker Image

```bash
docker build -t learning-cloud-run .
```

## Run Docker Container

```bash
docker run -p 8080:8080 learning-cloud-run
```

## CI Pipeline

The GitHub Actions workflow performs the following tasks:

1. Checkout source code
2. Setup Java 17
3. Build the application using Maven
4. Run tests
5. Package the application
6. Upload build artifacts

## Deployment

The application is deployed to Google Cloud Run using GitHub Actions.

## Author

Sangram Sekhar Panda
Software Engineer
