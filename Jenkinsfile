
pipeline {
    agent any
    tools {
        maven 'MVN'
    }
    stages {
        stage('Source Code') {
            steps {
                git branch: 'master', url: 'https://github.com/Nazim231/TodoApp'
            }
        }
        
        stage('Clean') {
            steps {
                sh 'mvn clean'
            }
        }
        
        stage('Compile') {
            steps {
                sh 'mvn compile'
            }
        }
        
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        
        stage('Package'){
            steps {
                sh 'mvn package'
            }
        }
        
        stage('Deploy') {
            steps {
                sh '''
                sudo cp /home/anonymous/Desktop/DevOps_Project/TodoApp/target/TodoApp.war /opt/tomcat/webapps
                '''
            }
        }
    }
}
