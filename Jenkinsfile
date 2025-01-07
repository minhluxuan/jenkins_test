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
                    sh 'echo "123" | sudo -S docker build -t my-node-app .'
                    
                    // Run Docker container
                    sh 'echo "123" | sudo -S docker run -d --name my-node-app-container -p 3000:3000 my-node-app'
                }
            }
        }
    }
}
