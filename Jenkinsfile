
pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                script {
                    echo 'chechout'
                    sh'git clone https://github.com/syedmahadhi/demo.git'
                
                }
            }
        }

        stage('Local run') {
          steps{
            script{
              echo 'run local'
              sh 'pip install -r requirements.txt'
              sh 'python app.py'
            }
          }
        }

        stage('Docker build') {
            steps {
                script {
                        echo 'build'
                        sh 'docker build -t hello_world .'
                    }
                }
            }

        stage('Run') {
            steps {
                script {
                    echo 'run'
                    sh 'docker run -d -p 5000:5000 hello_world'
                }
            }
        }

    }
}
