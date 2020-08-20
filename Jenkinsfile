pipeline {
    agent any
    stages {
        stage('Download gradle') {
            steps {
                sh """
                    curl https://downloads.gradle-dn.com/distributions/gradle-4.10.2-bin.zip --output gradle.zip
                    unzip gradle.zip
                    ./gradle-4.10.2/bin/gradle wrapper
                    ./gradlew -v
                    chmod +x gradlew
                    rm -f gradle.zip
                    rm -rf gradle-4.10.2
                    ls
                    mvn -v
                """
            }
        }
        stage('Build') {
            steps {
                sh "cd workspace-Test && ${WORKSPACE}/gradlew clean build"
            }
        }
    }
    post {
        always {
            deleteDir()
        }
    }
}
