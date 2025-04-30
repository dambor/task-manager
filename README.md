# Task Manager Web Application

A simple task manager web application with Docker and Kubernetes deployment configurations.

## Features

- Add new tasks
- Delete completed tasks
- Responsive design
- Docker containerization
- Kubernetes deployment with horizontal scaling

## Project Structure

```
task-manager/
├── public/
│   └── index.html
├── server.js
├── package.json
├── Dockerfile
├── kubernetes-deployment.yaml
└── README.md
```

## Local Development

1. Install dependencies:
   ```
   npm install
   ```

2. Start the development server:
   ```
   npm run dev
   ```

3. Open your browser and navigate to `http://localhost:3000`

## Docker Build & Run

Build the Docker image:
```
docker build -t task-manager:1.0.0 .
```

Run the container locally:
```
docker run -p 3000:3000 task-manager:1.0.0
```

## Kubernetes Deployment

Apply the Kubernetes deployment configuration:
```
kubectl apply -f kubernetes-deployment.yaml
```

This will create:
- A deployment with 3 replicas
- A service of type LoadBalancer
- A horizontal pod autoscaler to scale based on CPU usage

## Kubernetes Features

- **High Availability**: 3 replicas ensure the application is always available
- **Resource Limits**: CPU and memory limits prevent resource contention
- **Health Checks**: Liveness and readiness probes ensure healthy pods
- **Auto Scaling**: HPA scales pods based on CPU utilization
- **Load Balancing**: Service distributes traffic across pods

## Next Steps for Enhancement

- Add task persistence with a database
- Implement user authentication
- Add task categories and priorities
- Implement task editing functionality
- Add task completion status
