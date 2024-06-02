pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: '0d7f8e9c-7f38-46f1-9959-ade107bba51e', url: 'https://github.com/Anandrawat981/RobotFrameworkPythonproject.git']])
            }
        }
        stage('Build') {
            steps {
                git credentialsId: '0d7f8e9c-7f38-46f1-9959-ade107bba51e', url: 'https://github.com/Anandrawat981/RobotFrameworkPythonproject.git'
                bat '''

pabot --processes 3 --outputdir Results DataDrivenTestCases/ 
'''
            }
        }
        stage('Test') {
            steps {
                echo 'Test job has passed.'
            }
        }
    }
    post
    {
        always
        {
            emailext body: 'testresultsmoke', subject: 'TestReport', to: 'anandrawat981@gmail.com'
        }
    }
}
