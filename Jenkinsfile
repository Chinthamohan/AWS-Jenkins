
pipeline {
    agent any  
    environment {
        TF_CLI_ARGS = "-no-color"   // Ensures clean, aligned output
    }
    stages {
        stage('Terraform Init & Plan') {
            steps {
                sh '''
                    terraform init
                    terraform plan -var-file="terraform.tfvars" -out=tfplan
                '''
            }
        }
        stage('Approval') {
            steps {
                script {
                    input message: "Approve to apply?"
                }
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }
}
