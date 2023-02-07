pipeline {
  agent {'linux'}
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('vasunthara-dockerhub')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t vasunthara/jen_doc .'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push vasunthara/jen_doc'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}
