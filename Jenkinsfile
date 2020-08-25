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
        stage('Deploy') {
            steps {
                sh "Start deploy"
                deploy("${WORKSPACE}")
            }
        }
    }
    post {
        always {
            deleteDir()
        }
    }
}


def deploy(workspace){
    sh "cd ${workspace} && mkdir deploy"
    sh "cp /workspace-Test/wars/test-Theme/build/libs/* ${workspace}/deploy"
}