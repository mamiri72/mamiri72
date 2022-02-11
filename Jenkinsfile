// Uses Declarative syntax to run commands inside a container.
pipeline {
    agent {
        kubernetes {
            yaml '''
apiVersion: v1
kind: Pod
metadata:
  name: docker
spec:
  containers:
  - name: docker
    image: "676894657875.dkr.ecr.us-west-2.amazonaws.com/slm-ami/dockers:2022.02"
    command: ["cat"]
    tty: true
    securityContext:
      privileged: true
      hostNetwork: true
    volumeMounts:
    - mountPath: /var/run/docker.sock
      name: dockersock
    allowedCapabilities:
      - NET_ADMIN
  volumes:
  - name: dockersock
    hostPath:
      path: /var/run/docker.sock
'''
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
                                docker build --network=host -t slm-ami:2022.04 .
                            """
                    }
                }
            }
        }
    }
}
