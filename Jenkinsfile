pipeline{
    agent any

    stages{
        stage("Get the Code from Github!! and Build It"){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ImArnav19/devops02.git']])
                sh 'mvn clean install'
            }
        }

        stage("Make me the Image, Build the Image!!"){
            steps{
                script{
                    sh 'docker build -t imarnav/devops-exp .'
                }
            }
        }

        stage("Upload my image to DockerHUb!!!!!!"){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerhubpwd2', variable: 'dockerhubpwd')]) {
                        sh 'docker login -u imarnav -p ${dockerhubpwd}'
                        sh 'docker push imarnav/devops-exp'
                    }

                }
            }
        }
    }
}