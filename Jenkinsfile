pipeline {
    agent { label 'test' }
    stages {
        stage('Run Tests') {
            parallel {
                stage('Test On Windows') {
                    steps {
                        sh 'docker build mariadb'
                    }
                }
                stage('Test On Linux') {
                    steps {
                        sh 'docker build openlitespeed'
                    }
                }
            }
        }
    }
}