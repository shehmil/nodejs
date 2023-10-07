

pipeline {
  agent any
 environment {
        IMAGE_TAG = "${BUILD_NUMBER}"

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
        echo "pisass"
      }
      }

stage ('Push the artifacts'){
steps{
 script{
   sh '''
   echo 'Push to Repo'
   docker push shehmil/nodejs:${BUILD_NUMBER}
   '''
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

