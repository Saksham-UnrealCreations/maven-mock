pipeline {
agent any

environment{
DOCKER_IMAGE = "sakshamb07/mavenapp"
IMAGE_TAG = "${BUILD_NUMBER}"
RELEASE_NAME = "mavenapp"
HELM_CHART = "./helm"
}

//def mavenHome = tool name: "maven 1"

//echo "the job name is : ---> ${env.JOB_NAME}"

//echo "this build number is: --> ${env.BUILD_NUMBER}"

//properties([buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '5'))])

stages{
stage('git checkout'){
steps{
git 'https://github.com/Saksham-UnrealCreations/maven-mock.git'
}
}

stage('build war'){
 steps{
sh 'mvn clean package -DskipTests'
}
}

stage('Build Docker Image'){
steps{
sh 'docker build -t $DOCKER_IMAGE:$IMAGE_TAG .'
}
}

stage('push image'){
steps{
withCredentials([usernamePassword(
credentialsId: 'docker-creds',
usernameVariable: 'DOCKER_USER',
passwordVariable: 'DOCKER_PASS'
)]) {
sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
sh 'docker push $DOCKER_IMAGE:$IMAGE_TAG'
}
}
}

stage('Deploy via HELM'){
steps{
withCredentials([usernamePassword(
credentialsId: 'k8s-config'
 )]) {
sh """
helm upgrade --install $RELEASE_NAME $HELM_CHART \
--set image.repository=$DOCKER_IMAGE \
--set image.tag=$IMAGE_TAG
"""
}
}
}
}
 
}
