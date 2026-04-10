pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git '<YOUR_GIT_REPO_URL>'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ci-cd-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 8081:80 ci-cd-app'
            }
        }
    }
}
