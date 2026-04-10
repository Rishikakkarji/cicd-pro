pipeline {
    agent new

    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/Rishikakkarji/cicd-pro.git'
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
