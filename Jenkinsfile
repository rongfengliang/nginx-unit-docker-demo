pipeline {
  agent {
    node {
      label 'docker-66'
    }

  }
  stages {
    stage('docker build') {
      steps {
        sh 'docker build -t myunit .'
      }
    }
    stage('docker run ') {
      steps {
        sh 'docker run -d -p 9080:8080 -p 9000:8000 myunit'
      }
    }
    stage('deploy service') {
      steps {
        sh './run.sh'
      }
    }
  }
}
