pipeline{

    agent any
    tools {
        // Especifica el nombre de la herramienta de Maven configurada en Jenkins
        maven 'maven_3_9_6'
    }
    stages {
        stage('Compile') {
            steps {
                // Ejecuta las tareas de compilación con Maven
                sh 'mvn clean compile'
            }
        }
        stage('Test') {
            steps {
                // Ejecuta las pruebas con Maven
                sh 'mvn clean verify -Dkarate.options=""'
            }
        }

        stage('Publish HTML Report') {
            steps {
                publishHTML(target: [
                        allowMissing: false,
                        alwaysLinkToLastBuild: true,
                        keepAll: true,
                        reportDir: 'target/karate-reports',
                        reportFiles: 'karate-summary.html',
                        reportName: 'Karate Report'
                ])
            }
        }

    }

}