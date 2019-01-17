pipeline {
    agent {
        docker {
            image 'node:6-alpine'            
            args '--name="node_v1"'
            args '--network="app-net"'
            args '-p 4444:3000'
        }
    }
    environment {
        MEMOWIKI_COMMON_CREDS = credentials('memowiki-test-user-pass')
    }    
    stages {
        stage('env') {
            steps {
                sh 'id'
                sh 'whoami'
                sh 'pwd'
                sh 'printenv'
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
                input message: 'Finished using the web site? (Click "Proceed" to continue)' 
                sh './jenkins/scripts/kill.sh' 
            }
        }
    }
}
