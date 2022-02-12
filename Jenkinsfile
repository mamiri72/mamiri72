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
			      echo "In SLM now"
          		      sh 'ls /'
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
				#aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 676894657875.dkr.ecr.us-west-2.amazonaws.com
				echo "eyJwYXlsb2FkIjoiUW5zUzZkRUZRNFNDSXJ2WS9vWUNwQ1NCYnZ6Qzg4Szhra21GQm9wcHYyWkdyeEppZHRBZTJYOUhXSlYvRjBkcVpYQkEzUU5ndEsrSlJxSnp1UmdLM0YzR3pjNmk0RE9FQk5qQ3pVSld6Z25zSk1ub0JHV1U2K3pkU1NpWHlLb0duMldTVHZ0OTgzMU5hRFcvK3A2QlpCWGRpOXZIVFQ5ajhJY0xRUU9VRWV2MTRWNnVxS0JmTGV6WVVLaUY3YlFONVY3MXBFT3haRHhVVnc5UzRpaGZhUTFxTk8xSzVYaHBodEsvcFJtellhNm5wWWtLbE1FMWdGUFF3OGlWR1B0VDMzcFpEM1AyYTV6OEYrdVROS1RZODcxMTBvVkVKTEVkNGloVG5aZi9EcjdQNFMwcG9CMS9QL1pCWDhQY2I0Um1ZUnFhYmE3ZEZrQUN3ZllJdHE0ZkIwZWFWSXQ3QkJ4dTh1T01JRWlXVEljbDIwT3ZVQzhYWUhycy95SkVDM1ZzWGdqUmh3ekY5OTJSWFErYlJyNnh2OUw1anpRNEwyV2lybGpBMnFTckpmZVFsUWk5cnNnUEQ3bEFEdFZoUXJvNEVJQnF6RTgrSzdQZlMrWE01UmVTaDlYblc2WU1JeGdFUktkNWV6a2xSTm5nQTdRNFArWmQ0TzEzYWxLZFRWcDlQMXNZQk5PU1pnSW1XVWVjaVV2UHBYZ3NRbEhOMGVEWm1jV3dpaFBhdU9jMVJYLzBMbWI2UUFxU2pxRkk1VVNFZ1ZQYVdpZU9PdUFRSWdKS0VQbmdGN1E0dXBQWUE0K1NVWEFWdWRJcVI2S0RKeDJJdDBmOUx6KzBNTXlvQ3VKblB0NU1sTktGR2p0ekJ2ajFldDROYXYxRWYwbEtUdHZjR1Z1bEcxckEwK05tSnRhS3ZYOWJENnlNcWI5azBjQWwvelhBQVJYVXpnbm1JOFpYcVE4SytXNm5qdVpNblk2L0JNcHFTVUw0TVBYTk9mL3k2Q0JnaG1nQSs2NjBhZFRQTmNXdVdnNENycGpKdGxndk9LOWYrbW1hTDRaYXdKcjY4cSt2djIrY0ZSeHRORnRJQ285REY3TjdNWkY3bndpU2JpL2tlLy96bXVIbHZVZWxMZUYwcG5YMG9IcHRjUGVXQlhiK0MvNS9mcmEzdE1IOTBwTEkvenNDcVhxdWIxZ1hxR0M4cUhyQ3dUaTM5cGhFS0pyRGxpbGxUUjdWOVFMc2lNWjloYzJlb0ZSaDliMTBaTERtdXZlU1hzUC9Ia1RWdkFTVm05OXBDK3FhTmNFOWRiVjNIVjRYSmN0bGxSeUlIVzB5dGNPYUtzSGw5alBzb2g0cVJUcHVnc1cxa1J1bzFjWDk2WWF1V0ZIU3J5QlJ0MDZndnNOblRyMlRJeDBjZWhlZW9EMjgzclA2VlZxNnVDa1Z5eTdZTWRiNitYY010TVNrZWE5VFJXOEZ0Mk4zL3RDWnRsSWN4MkFJVUt3WTZuNVJ5ZVpWR0NSVFZZK3ZocWtOQTVSQmtoSC9GTkJSbDI1S3hHbGVXNDgyVTVDNHkxamwzL1k0ZnRHUDYyOWdZWVB2UG1mZGcxVWFPNjRqRkZaczJGLzVZRjdZdTN0SjRNMjlORmVLUTlac3R6NEhpemFhSlYrU0JZVHdidW8vMWtkQm5zc2hQMGNJaDRvTFVBWlBaeklEaStPTGx5TklKUnUyemlVVCttTUprV2JjVWtYMU92ek16UzJaWTNjR3RIemxFTG1nYldrbVNNaGJuYkEzZVk1a0gwVTZyNmFLNS9uUUM1MDRYVWdnT3FNdWNTYTB1NWp5cFFHb0Yzay9MV1Babk1ScS9MY2VpeDBBMzgyRENnTG56WWVhWEhhTzJsUk9UZjRDdkp2RW94SVFaN2V6TFIySHNMQ2lLT3VGNmNuWUxaTTB0ZVRSQnBLMzhueG1USjJ1QVh6Wm42bUpBZGxmSzYxR1lvRnAyTHA2Q0J2TDg3Y3g5U3J6R25NVTFibkpUaytKV2xtcGtoYmJ6MkFyNEE1Uk1ubCthKy9DQlkwTkgrY2VLRElWUGhlQld3THU2SEVwakNrWDdKaVpBZENlS3FnYjJrMGk5NlhXOXNUQWorTTRjelJ4Y0MweVMwanFrajV2OWVwdm9FQm1odz09IiwiZGF0YWtleSI6IkFRRUJBSGo2bGM0WElKdy83bG4wSGMwMERNZWs2R0V4SENiWTRSSXBUTUNJNThJblV3QUFBSDR3ZkFZSktvWklodmNOQVFjR29HOHdiUUlCQURCb0Jna3Foa2lHOXcwQkJ3RXdIZ1lKWUlaSUFXVURCQUV1TUJFRURNN3dvUEV1dHc5d2RCbnBjQUlCRUlBN1BsSk4zVWpLdUI2SDNNSU9mWmY5cGxwMVhuU0ZkRXMrWERXN1ZJRjBzNUJyZW04cm41aW1pWGpwL2M4R1dwVHoyeDFuNzkzZWEvZUtsUjA9IiwidmVyc2lvbiI6IjIiLCJ0eXBlIjoiREFUQV9LRVkiLCJleHBpcmF0aW9uIjoxNjQ0NjYzOTMzfQ==" | docker login --username AWS --password-stdin 676894657875.dkr.ecr.us-west-2.amazonaws.com
  				echo "Building now "
                                docker build --network=host -t slm-ami/images:2022.05 .
				echo "will tag"
    				docker tag slm-ami/images:2022.05 676894657875.dkr.ecr.us-west-2.amazonaws.com/slm-ami/images:2022.05
				echo "will push"
				docker push 676894657875.dkr.ecr.us-west-2.amazonaws.com/slm-ami/images:2022.05
                            """
                    }
                }
            }
        }
    }
}

