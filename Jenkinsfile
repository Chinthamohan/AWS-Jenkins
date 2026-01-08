pipeline {
    agent any  

    environment {
        TF_CLI_ARGS = "-no-color"
    }

    stages {

        stage('Terraform Init') {
            steps {
                sh '''
                    terraform init
                '''
            }
        }

        stage('Terraform Plan') {
            steps {
                sh '''
                    terraform plan -out=tfplan
                '''
            }
        }

        stage('Approval') {
            steps {
                script {
                    input message: "Approve to apply Terraform changes?"
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                sh '''
                    terraform apply -auto-approve tfplan
                '''
            }
        }
    }
}

