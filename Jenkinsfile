pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Validate Docker Compose') {
            steps {
                sh 'docker compose -f docker/docker-compose.yml config'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker compose -f docker/docker-compose.yml build'
            }
        }

        stage('Deploy Application') {
            steps {
                sh 'docker compose -f docker/docker-compose.yml up -d'
            }
        }

        stage('Verify Deployment') {
            steps {
                sh 'sleep 5'
                sh 'curl -f http://host.docker.internal:5000/health'
            }
        }
    }

    post {
        success {
            echo 'CI/CD pipeline completed successfully.'
        }

        failure {
            echo 'CI/CD pipeline failed.'
        }
    }
}