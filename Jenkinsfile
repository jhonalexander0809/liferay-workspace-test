pipeline {
    agent any
    stages {
        /*stage('Download gradle') {
            steps {
                sh """
                    cd workspace-Test
                    curl https://downloads.gradle-dn.com/distributions/gradle-4.10.2-bin.zip --output gradle.zip
                    unzip gradle.zip
                    ./gradle-4.10.2/bin/gradle wrapper
                    mv ./gradle-4.10.2/bin/* ./*
                    ./gradle -v
                    chmod +x gradle
                    rm -f gradle.zip
                    rm -rf gradle-4.10.2
                    ls
                """
            }
        }*/
        stage('Build') {
            steps {
                sh "cd workspace-Test && chmod +x gradlew && ./gradlew clean build"
            }
        }
    }
    post {
        always {
            deleteDir()
        }
    }
}
