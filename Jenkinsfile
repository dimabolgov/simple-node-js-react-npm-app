pipeline {
    agent {
        dockerfile {
            args '-p 4444:4444 --name="node_v1" --net="vnoveprod_app-net"'
        }
//        docker {
//            image 'node:6-alpine'            
//            args '-p 4444:4444 --name="node_v1" --net="vnoveprod_app-net"'
//            // Error: docker: Error response from daemon: network app-net not found.
//            //args '-p 4444:3000 --name="node_v1" --network="app-net"'            
//        }
    }
    environment {
        MEMOWIKI_COMMON_CREDS = credentials('memowiki-test-user-pass')
    }    
    stages {
        stage('env') {
            steps {
                sh 'id'
//                 sh 'whoami'
//                 sh 'pwd'
//                 sh 'printenv'
            }
        }
        stage('Build') {
            steps {
                //sh 'docker network connect app-net node_v1'
//                 sh 'id'
//                 sh 'whoami'
//                 sh 'pwd'
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
