pipeline{
    agents
    stages{
        stage('Clone Flask app Repo'){
            steps{
                sh "rm -rf cne-sfia2-brief"
                sh "git clone https://gitlab.com/qacdevops/cne-sfia2-brief"
            }
        }
        stage('Install Tools'){
            steps{
                
            }
        }
        stage('Test Application'){
            steps{

            }
        }
        stage('Deploy Application'){
            steps{
                sh "cd cne-sfia2-brief && sudo docker-compose pull && sudo -E DB_PASSWORD=${DB_PASSWORD} docker-compose up -d"
            }
        }
    }
}