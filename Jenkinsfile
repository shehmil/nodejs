

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
        echo "testing completed"
      }
      }

   stage('Push Docker Image to Dockerhub'){
            steps{
                script{
                   withCredentials([string(credentialsId: 'dockerhub_TOKEN', variable: 'DOCKERHUB_USER_PASS')]) {
                sh 'docker login -u shehmil -p ${dockerhub_TOKEN}'
}
                   sh 'docker push shehmil/nodejs:${BUILD_NUMBER}'
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

