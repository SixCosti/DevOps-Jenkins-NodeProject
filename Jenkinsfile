pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Getting the latest code from the Git repository
                git 'https://github.com/SixCosti/DevOps-Jenkins-NodeProject'
            }
        }
        
        stage('Build') {
            steps {
                // Building the Docker image
                sh 'docker build -t nodejs-app .'
            }
        }
        
        stage('Deploy') {
            steps {
                // Running the Docker container
                sh 'docker run -d --name nodeapp -p 5000:5000 nodejs-app'
            }
        }
    }
    
    post {
        always {
            // Spring clean
            sh 'docker rm -f nodeapp || true'
        }
    }
}
