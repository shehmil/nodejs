

pipeline {
  agent any
 environment {
        IMAGE_TAG = "${BUILD_NUMBER}"
         registry = 'shehmil/nodejs'
         registryCredential ='dockerhub'
 }
  stages {
    stage('checkout') {
      steps {
        git url: "https://github.com/shehmil/nodejs.git", branch: 'master'
      }
      }
      
      stage('build') {
      steps {
        sh 'docker build  -t node_latest:${BUILD_NUMBER} .'
      }
      
    }
      
      stage('test') {
      steps {
        echo "testing completed"
      }
      }

  
stage('Upload Image') {
     steps{    
         script {
            docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
            }
        }
      }
    }

       stage('deploy') {
      steps {
        echo "deploypass"
      }

    }
  }
}

