pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh """
                    cd workspace-Test 
                    chmod +x gradlew 
                    ./gradlew clean build
                """
            }
        }
        stage('Publish Artifacts') {
            steps {
                sh """
                    cd workspace-Test && ./gradlew uploadArchives
                """
            }
        }
    }
    post {
        always {
            deleteDir()
        }
    }
}
