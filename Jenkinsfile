#!groovy

def imageName = 'jenkinsciinfra/bind'

properties([
    buildDiscarder(logRotator(numToKeepStr: '5')),
    pipelineTriggers([[$class:"SCMTrigger", scmpoll_spec:"H/15 * * * *"]]),
])

node('docker') {
    checkout scm

    /* Using this hack right now to grab the appropriate abbreviated SHA1 of
     * our current build's commit. We must do this because right now I cannot
     * refer to `env.GIT_COMMIT` in Pipeline scripts
     */
    sh 'git rev-parse HEAD > GIT_COMMIT'
    shortCommit = readFile('GIT_COMMIT').take(6)
    def imageTag = "${env.BUILD_ID}-${shortCommit}"


    stage 'Build'
    def whale = docker.build("${imageName}:${imageTag}", '--no-cache --rm .')

    stage 'Deploy'
    whale.push()
}
