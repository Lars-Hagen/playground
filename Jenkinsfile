pipeline {
    agent "test"
    stages {
        stage('Run Tests') {
            parallel {
                stage('Test On Windows') {
                    steps {
                        echo "hello"
                    }
                }
                stage('Test On Linux') {
                    steps {
                        echo "hello2"
                    }
                }
            }
        }
    }
}