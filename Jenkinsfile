pipeline {
    agent any
        stages {
            stage('Build') {
                steps {
                    // Compila el proyecto Java utilizando Maven
                    script {
                        if (isUnix()) {
                            sh 'mvn clean package'
                        } else {
                            bat 'mvn clean package'
                        }
                    }
                }
            }
            stage('Test') {
                steps {
                    // Ejecuta las pruebas unitarias
                    script {
                        if (isUnix()) {
                            sh 'mvn test'
                        } else {
                            bat 'mvn test'
                        }
                    }
                }
            }
            stage('Deploy') {
                steps {
                    // Construye la imagen Docker y la ejecuta localmente
                    script {
                        if (isUnix()) {
                            sh 'docker build -t myapp .'
                            sh 'docker run -d -p 8080:8080 myapp'
                        } else {
                            bat 'docker build -t myapp .'
                            bat 'docker run -d -p 8080:8080 myapp'
                        }
                    }

                }
            }
        }
}