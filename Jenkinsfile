pipeline {
    agent none
    parameters {
        choice(name: 'ACTION', choices: ['present', 'absent'], description: '')
        string(name: 'Name', defaultValue: 'test', description: '')
    }
    options {
        buildDiscarder(logRotator(numToKeepStr: '10'))
        disableConcurrentBuilds()
        timestamps()
        ansiColor('xterm')
    }
    stages {
        stage('EC2 Deploy') {
            agent {
                label none
            }
            environment {
                AWS_CREDS=credentials('aws-secrets')
            }
            steps {
                sh """
                mkdir .aws
                cp AWS_CREDS .aws
                source .aws/config
                terraform apply main.tf
                """
            }
            // when {
            //     branch 'development'
            //     not {
            //         changeRequest()
            //     }
            // }
        }
    }
}