pipeline {
    agent any
    options {
        buildDiscarder(logRotator(numToKeepStr:'20',daysToKeepStr:'5' ))
    }
    stages {
        stage('Pull Code') {
            steps {
                script {
                    properties([pipelineTriggers([pollSCM('*/30 * * * *')])])
                }
                git 'https://github.com/keidar/Project3.git'
            }
        }
        stage('run rest app server ') {
            steps {
                script {
                    sh 'nohup python rest_app.py &'

                }
            }
        }

        stage('run backend testing') {
            steps {
                script {
                    sh 'python backend_testing.py'

                }
            }
        }
        stage('run clean environment ') {
            steps {
                script {
                    sh ' python clean_environment.py'

                }
            }
        }
        stage('build docker image ') {
            steps {
                script {
                    sh ' docker build -t project3 .'
                }
            }
        }
        stage('run clean environment ') {
            steps {
                script {
                    sh ' python clean_environment.py'

                }
            }
        }
        stage('run clean environment ') {
            steps {
                script {
                    sh ' python clean_environment.py'

                }
            }
        }
    }
}
