pipeline {
    agent {
        docker {
            image 'node:6-alpine'
            args '-p 4444:3000'
        }
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
    }
}
