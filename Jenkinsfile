pipeline{
        agent any
        stages{
            // stage('Test Application'){
            //     steps{
            //         sh "bash ssh_into_testVM.sh"
            //     }
            // }
            stage('docker images and docker compose'){
                steps{
                    sh "bash docker-image.sh"
                }    
            }

            stage('Build Application'){
                steps{
                    sh "bash cluster.sh"
                }
            }
            stage('kubernetes'){
                steps{
                    sh "bash kubernetes.sh"
                }
            }
            
            
        }
    }