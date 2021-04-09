pipeline{
        agent any
        stages{
            stage('Test Application'){
                steps{
                    sh "bash test-script.sh"
                }
            }
            stage('docker'){
                steps{
                    sh "bash docker-image.sh"
                }    
            }
            // stage('Build Application'){
            //     steps{
            //         sh "bash kubernetes/cluster.sh"
            //     }
            // }
            // stage('Deploy'){
            //     steps{
            //         sh "bash kubernetes/kubernetes.sh"
            //     }
            // }
            
            
        }
    }