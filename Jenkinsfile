pipeline {
    agent any

    environment {
        DOCKERHUB_USER = 'azmiqa1'
        DOCKERHUB_REPO = 'azmiqa1/testing-image'
        DOCKER_PASS = credentials('DOCKER_HUB_TOKEN')
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
                    sh "docker build -t ${DOCKERHUB_USER}/${DOCKERHUB_REPO}:latest ." 
            }
        }
    }
        
        stage('push') {
            steps {
                script {
                    sh "echo ${DOCKER_PASS} | docker login -u '${DOCKER_USER}' --password-stdin"
                    sh "docker push ${DOCKERHUB_REPO}:latest"
             }
        }
}
        
}
}
