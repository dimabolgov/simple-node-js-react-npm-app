pipeline {
    agent {
        docker {
            image 'node:6-alpine'
            args '-p 4444:3000'
        }
    }
    environment { 
        CI = 'true'
    }
    stages {
        stage('env') {
            steps {
                sh 'id'
                sh 'whoami'
                sh 'pwd'
            }
        }
        stage('Build') {
            steps {
                sh 'id'
                sh 'whoami'
                sh 'pwd'
                sh 'npm install'
            }
        }
        stage('Deliver') { 
            steps {
                sh './jenkins/scripts/deliver.sh' 
                sh './jenkins/scripts/kill.sh' 
            }
        }
    }
}
