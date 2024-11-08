pipeline {
    agent any
    
    stages {
        stage('Clone Repository') {
            steps {
                // Specify the branch explicitly
                git branch: 'main', url: 'https://github.com/sammed-18/jenkins-docker-pipeline.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("sammed18/jenkins-java-app")
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub-credentials') {
                        dockerImage.push("latest")
                    }
                }
            }
        }
    }
}
