pipeline{
    agents any
    stages{
        stage('Clone Flask app Repo'){
            steps{
                sh "rm -rf cne-sfia2-brief"
                sh "git clone https://gitlab.com/qacdevops/cne-sfia2-brief"
            }
        }
        stage('Build Application'){
            steps{
                sh "bash cluster.sh"
            }
        }
        stage('Test Application'){
            steps{
                sh "cd cne-sfia2-brief && pytest"
                sh "pytest --cov application"

            }
        }
        stage('Deploy Application'){
            steps{
                sh "cd cne-sfia2-brief && sudo docker-compose pull && sudo -E DB_PASSWORD=${DB_PASSWORD} docker-compose up -d"
            }
        }
    }
}