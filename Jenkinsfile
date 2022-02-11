//Made commenct

pipeline {
    agent {
        kubernetes {
          //yaml libraryResource('resources/jenkins/agents/mamiri72.yaml')
          yamlFile ('resources/jenkins/agents/mamiri72.yaml')
    }
    }
    stages {
        stage('Main') {
            steps {
                container('jnlp') {
                    script {
                            sh 'printenv'
                    }
                }
                container('docker') {
                    script {
                            echo " NOTHINGNOTHINGNOTHINGNOTHING "
                            sh """
                                cd ${WORKSPACE}
                                echo "Is there anything"
                                ls
                                docker --version
				echo "login in "
				aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 676894657875.dkr.ecr.us-west-2.amazonaws.com
  				echo "Building now "
                                docker build --network=host -t slm-ami:2022.05 .
				echo "will tag"
    				docker tag slm-ami:2022.05 676894657875.dkr.ecr.us-west-2.amazonaws.com/slm-ami:2022.05
				echo "will push"
				docker push 676894657875.dkr.ecr.us-west-2.amazonaws.com/slm-ami/dockers:2022.05
                            """
                    }
                }
            }
        }
    }
}

