

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
        sh 'docker build  -t shehmil/nodejs:${BUILD_NUMBER} .'
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
                sh 'docker login -u shehmil -p ${DOCKERHUB_USER_PASS}'
}
                   sh 'docker push shehmil/nodejs:${BUILD_NUMBER}'
                }
            }

  }


         stage('DEPLOYMENT') { 

        steps { 

            sh 'docker run -dp 5001:3000 shehmil/nodejs:${BUILD_NUMBER}'

      }
         }





    
    
//     stage('Cleaning up') { 

//         steps { 

//             sh 'docker rmi shehmil/nodejs:${BUILD_NUMBER}'

//         }

    } 

}
// }

