#!groovy

def imageName = 'jenkinsciinfra/bind'
def imageTag = "build${env.BUILD_NUMBER}"

node('docker') {
    checkout scm

    stage 'Build'
    def whale = docker.build("${imageName}:${imageTag}")

    stage 'Deploy'
    whale.push()
}
