pipeline {
	agent any
	
	environment {
		IMAGE_NAME= 'leesuhyun1/boot-app:latest'
		CONTAINER_NAME= 'boot-app'
	}
	stages {
		stage('CheckOut') {
			steps {
				echo 'Git CheckOut'
				checkout scm
			}
		}
		
		stage('Gradlew Build') {
			steps {
				echo 'Gradle Build'
				sh '''
					chmod +x gradlew
					./gradlew clean build -x test
				   '''
			}
		}
		
		stage('Docker Build') {
			steps {
				echo 'Docker Image Build'
				sh '''
					docker build -t ${IMAGE_NAME} .
				   '''
			}
		}
		
		stage('Docker Run') {
			steps {
				echo 'Docker Run'
				sh '''
					docker stop ${CONTAINER_NAME} || true
					docker rm ${CONTAINER_NAME} || true
					
					docker run --name ${CONTAINER_NAME} \
					-it -d -p 9090:9090 \
					${IMAGE_NAME}
				   '''
			}
		}
	}
	post {
		success {
			echo 'Docker Success'
		}
		failure {
			echo 'Docker Fail'
		}
	}
}