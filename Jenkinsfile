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
                    rm -f gradle.zip
                    rm -rf gradle-4.10.2
                """
            }
        }
        stage('Build') {
            steps {
                sh "cd workspace-Test && ./gradlew clean build"
            }
        }
    }
}
