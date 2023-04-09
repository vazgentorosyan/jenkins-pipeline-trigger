// pipeline {
//     agent any
//     stages {
//         stage('Hello') {
//             steps {
//                 echo 'Hello from trigger! ...'
//             }
//         }
//     }
// }
pipeline {
    agent {
        docker { image 'node:16.13.1-alpine' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}
