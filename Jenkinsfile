

pipeline {
  agent any
 environment {
        IMAGE_TAG = "${BUILD_NUMBER}"
DOCKERHUB_CREDENTIALS=credentials('dockerhub')
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

    stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
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

