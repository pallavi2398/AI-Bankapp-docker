# DevSecOps BankApp

[![Java Version](https://img.shields.io/badge/Java-21-blue.svg)](https://www.oracle.com/java/technologies/javase/jdk21-archive-downloads.html)
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.4.1-brightgreen.svg)](https://spring.io/projects/spring-boot)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

A modern, secure banking web application built with Spring Boot 3.4.1 and Java 21, featuring an integrated AI assistant and robust DevSecOps practices.

## 🌟 Key Features

- **Core Banking**: Secure user registration, login, real-time balance tracking, deposits, withdrawals, and peer-to-peer transfers.
- **AI Banking Assistant**: An integrated chat interface powered by Ollama (TinyLlama) that provides context-aware financial insights based on your transaction history.
- **High Performance**: Leverages Java 21 **Virtual Threads** for optimal concurrency and scalability.
- **Modern UI**: Clean, responsive dashboard built with Thymeleaf and modern CSS.
- **Monitoring & Observability**: Built-in health checks and metrics via Spring Boot Actuator and Prometheus integration.
- **Containerized Implementation**: Fully Dockerized setup for consistent development and deployment environments.

## 🛠️ Tech Stack

- **Backend**: Java 21, Spring Boot 3.4.1
- **Security**: Spring Security (Session-based auth)
- **Database**: MySQL 8.0, Spring Data JPA (Hibernate)
- **AI Integration**: Ollama (TinyLlama model)
- **Frontend**: Thymeleaf, HTML5, CSS3, JavaScript
- **Observability**: Spring Boot Actuator, Micrometer, Prometheus
- **Infrastucture**: Docker, Docker Compose

## 🚀 Quick Start

The fastest way to get the application running is using Docker Compose.

### Prerequisites
- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Running with Docker Compose
1. Clone the repository.
2. Navigate to the project root.
3. Run the following command:
   ```bash
   docker-compose up -d
   ```
4. Access the application at `http://localhost:8080`.
5. The AI assistant requires the `ollama` container to be running and the `tinyllama` model to be pulled (this may take a few minutes on first start).

## 💻 Manual Setup

If you prefer to run the application locally without Docker:

### Prerequisites
- JDK 21
- MySQL 8.0
- [Ollama](https://ollama.com/) (installed and running with `tinyllama` model)

### Steps
1. **Configure Database**: Create a database named `bankappdb` in your MySQL instance.
2. **Setup Properties**: Update `src/main/resources/application.properties` with your MySQL credentials.
3. **Run Ollama**: 
   ```bash
   ollama run tinyllama
   ```
4. **Build and Run**:
   ```bash
   ./mvnw spring-boot:run
   ```

## 🤖 AI Assistant Integration

The application integrates with [Ollama](https://ollama.com/) to provide a personal banking assistant. It uses the `tinyllama` model by default for a balance of performance and intelligence. The assistant has access to your:
- Current balance
- Recent transaction history (Last 5 transactions)
- Basic account information

This allows it to answer questions like "What was my last deposit?" or "Can I afford to spend $50?".

## 📈 Monitoring

The application exposes several management endpoints:
- **Health Check**: `http://localhost:8080/actuator/health`
- **Metrics**: `http://localhost:8080/actuator/metrics`
- **Prometheus Data**: `http://localhost:8080/actuator/prometheus`

## 📂 Project Structure

```text
src/main/java/com/example/bankapp/
├── config/        # Security and App configurations
├── controller/    # Web and REST controllers
├── model/         # JPA Entities (Account, Transaction)
├── repository/    # Data access layer
└── service/       # Business logic (Account, AI/Chat)
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
