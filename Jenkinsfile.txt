pipeline {
    agent any
    
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/YOUR_USERNAME/jenkins-docker-pipeline.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("your_dockerhub_username/jenkins-java-app")
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'sammed18') {
                        dockerImage.push("latest")
                    }
                }
            }
        }
    }
}
