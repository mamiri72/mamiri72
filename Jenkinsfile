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
		            echo "JNLP 1"
                            sh 'printenv'
                    }
                }
		container('busybox') {
		      script {
			      echo "Why it works"
          		      sh 'ls /'
		      }
        	}
		container('slm-ami') {
		      script {
			      echo "Is the workspace same --> ${WORKSPACE}"
          		      sh 'aws ecr get-login-password --region us-west-2 > zbaba'
			      echo "Helm is here"
                              sh 'helm version --short'        
                              echo "Sleep 3 mins"
			      sh 'sleep 180'
                              //sh 'helm -n slm-ami list'
		      }
        	}
                container('docker') {
                    script {
			    echo "Is the workspace same --> ${WORKSPACE}"
                            sh """
                                cd ${WORKSPACE}
                                echo "Is there anything"
                                ls
                                docker --version
				echo "login in "
				#aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 676894657875.dkr.ecr.us-west-2.amazonaws.com
				cat zbaba | docker login --username AWS --password-stdin 676894657875.dkr.ecr.us-west-2.amazonaws.com
  				echo "Building now "
                                docker build --network=host -t slm-ami/images:2022.05.01 .
				echo "will tag"
    				docker tag slm-ami/images:2022.05.01 676894657875.dkr.ecr.us-west-2.amazonaws.com/slm-ami/images:2022.05.01
				echo "will push"
				docker push 676894657875.dkr.ecr.us-west-2.amazonaws.com/slm-ami/images:2022.05.01
                            """
                    }
                }
            }
        }
    }
}

