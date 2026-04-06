<div align="center">

# 🤖 AI Banking Application (Dockerized with Ollama)

A containerized AI-powered Banking Application built using Spring Boot and integrated with Ollama (Local LLM). This project demonstrates how to run a multi-service application using Docker and Docker Compose.


</div>

![dashboard](screenshots/UI.png)

---

## 🚀 Features

- 🏦 Banking operations (Login, Register, Transactions)
- 🤖 AI-powered responses using Ollama
- 🐳 Fully Dockerized application
- 🔗 Multi-container setup using Docker Compose
- 💾 MySQL database integration
- ⚡ Uses lightweight LLM (tinyllama) for efficient local execution


---

## Technology Stack

- **Backend Framework:** Java 21, Spring Boot 3.4.1-
- **Persistence Layer:** MySQL 8.0 (Docker Container)
- **AI Integration:** Ollama (TinyLlama)
- **Containerization:** Docker, Docker Compose

---

## 📁 Project Structure

```text
ai-bank-app/
├── .mvn/
├── src/
├── pom.xml
├── mvnw
├── mvnw.cmd
├── Dockerfile
├── docker-compose.yml
├── scripts/
└── README.md
```
## ⚙️ How It Works

This application runs using 3 main services:

- **1. Spring Boot App →** Handles business logic
- **2. MySQL Container →** Stores user & transaction data
- **3. Ollama Service →** Provides AI responses

## 🐳 Run with Docker (Recommended)

**Step 1:** Clone Repository
```bash
git clone https://github.com/your-username/ai-bank-app.git
cd ai-bank-app
```
**Step 2:** Run Application
```bash
docker compose up -d
```

**Step 3:** Pull AI Model
```bash
docker exec -it ollama ollama pull tinyllama
```
Run this command only once to download the AI model

**Step 4:** Verify Containers
```bash
docker ps
```

## 🌐 Access Application

Open in browser:
```bash
http://localhost:8080
```

## 💻 Run Locally (Without Docker)

**📌 Prerequisites**
- Java (Version 21)
- Maven
- MySQL (Version 8.0)

**🗄️ Step 1: Create Database**
```bash
CREATE DATABASE bankappdb;
```

**⚙️ Step 2:** Build the Application

```bash
./mvnw clean package -DskipTests
```

**▶️ Step 3:** Run the Application

```bash
java -jar target/*.jar
```

**🔧 Optional: Override Database Configuration**

```bash
MYSQL_HOST=localhost MYSQL_PORT=3306 \
MYSQL_DATABASE=bankappdb \
MYSQL_USER=root MYSQL_PASSWORD=yourpassword \
java -jar target/*.jar
```

## 🐳 Dockerfile Explanation

This project uses a custom Dockerfile to containerize the Spring Boot application.

**Key Steps:**
- Uses OpenJDK base image
- Builds application using Maven (multi-stage build)
- Copies the generated .jar file
- Exposes port 8080
- Runs the application using java -jar
 
---

## 🎯 Key Learnings
- Dockerizing a Spring Boot application
- Managing multi-container apps using Docker Compose
- Integrating AI (LLM) into backend apps
- Container networking and service communication

## 🚀 Future Improvements

- CI/CD pipeline integration
- Kubernetes deployment
- Security scanning (Trivy)

## 🙌 Acknowledgment
This project is based on an open-source Spring Boot AI Banking Application. 
My contribution includes Dockerization, multi-container setup using Docker Compose, 
and integration with Ollama for local AI capabilities.


**Author**<br>
Pallavi Agarwal