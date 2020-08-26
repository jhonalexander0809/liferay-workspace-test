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
                echo "Start deploy"
                sh """
                    docker exec -d liferay mkdir -p /opt/liferay/temp-deploy
                    docker exec -d liferay chmod 775 -R /opt/liferay/temp-deploy/
                    docker exec -d liferay rm -rf /opt/liferay/temp-deploy/*
                    docker cp $WORKSPACE/workspace-Test/wars/test-Theme/build/libs/*.war liferay:/opt/liferay/temp-deploy/
                    docker exec liferay bash -c 'cp -r /opt/liferay/temp-deploy/*.war /opt/liferay/deploy/'
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