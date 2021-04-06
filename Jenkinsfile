pipeline{
    agents any
    stages{
        stage('Build Application'){
            steps{
                sh "bash cluster.sh"
            }
        }
        stage('Test Application'){
            steps{
                sh "bash ssh_into_testVM.sh"

            }
        }
        stage('Deploy Application'){
            steps{
                sh "bash deploy_flaskapp.sh"
            }
        }
    }
}