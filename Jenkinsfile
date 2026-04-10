pipeline {
    agent { label 'new' }

    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/Rishikakkarji/cicd-pro.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ci-cd-app1 .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 8082:80 ci-cd-app1'
            }
        }
    }
}
