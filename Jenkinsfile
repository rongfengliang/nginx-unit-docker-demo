pipeline {
  agent {
    node {
      label 'docker-65'
    }
  }
  stages {
    stage('docker-compose build') {
      steps {
        sh 'docker-compose build'
      }
    }
    stage('docker-compose run ') {
      steps {
        sh 'docker-compose up -d'
      }
    }
    stage('deploy service') {
      steps {
        sh './run.sh'
      }
    }
  }
}
