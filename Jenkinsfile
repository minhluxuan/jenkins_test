pipeline {
    agent any
    stages {
        stage('Install stage') {
            steps {
                sh 'npm install'
            }
        }
        stage('Dockerize stage') {
            steps {
                script {
                    // Build Docker image
                    sh 'docker build -t my-node-app .'
                    
                    // Run Docker container
                    sh 'docker run -d --name my-node-app-container -p 3000:3000 my-node-app'
                }
            }
        }
    }
}
