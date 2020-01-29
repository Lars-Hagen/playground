pipeline {
    agent { label 'test' }
    stages {
        stage('Run Tests') {
            parallel {
                stage('Test On Windows') {
                    steps {
                        docker build mariadb
                    }
                }
                stage('Test On Linux') {
                    steps {
                        docker build openlitespeed
                    }
                }
            }
        }
    }
}