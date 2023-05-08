pipeline {
    agent any
    parameters {
        string(name: 'name', defaultValue: 'World', description: 'Name to greet')
    }
    stages {
        stage('Greeting') {
            steps {
                script {
                    def message = "Hello ${params.name}!"
                    println message
                }
            }
        }
        stage('List Files') {
            steps {
                sh 'ls -la'
            }
        }
    }
}
