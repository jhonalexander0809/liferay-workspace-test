pipeline {
    agent { docker { image 'gradle:4.10.2' } }
    stages {
        stage('build') {
            steps {
                sh 'gradle -v'
            }
        }
    }
}
