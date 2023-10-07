

pipeline {
  agent any

  stages {
    stage('checkout') {
      steps {
        git url: "https://github.com/shehmil/nodejs.git", branch: 'master'
      }
      }
      
      stage('build') {
      steps {
        sh 'docker build  -t node:${GIT_COMMIT} .'
      }
      
    }
      
      stage('test') {
      steps {
        echo "pisass"
      }
      }
       stage('deploy') {
      steps {
        echo "deploypass"
      }

    }
  }
}

