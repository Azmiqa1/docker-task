pipeline {
    agent any

    environment {
        DOCKER_PASS = credentials('dockerhub-credentials')
    }

    stages {
        stage('checkout') {
            steps {
                checkout scm
            }
        }
        stage('build') {
            steps {
                script {
                    sh "docker build . -t azmiqa1/testing-image:latest" 
            }
        }
        
}
