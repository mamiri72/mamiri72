@Library('mamiri72@main')

pipeline {
    agent {
        kubernetes {
          yaml libraryResource('jenkins/agents/mamiri72.yaml')
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
                                docker build --network=host -t slm-ami:2022.05 .
                            """
                    }
                }
            }
        }
    }
}
