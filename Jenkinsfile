pipeline {
    agent any
    stages {
        stage("Build da imagem docker ") {
            steps {
                sh 'docker build -t nginx-teste:v01 .'
            }
        }
        stage("Apagar serviço no docker swarm") {
            steps {
                sh 'docker service rm app-nginx-teste'
            }
        }
        stage("Subindo serviço / container") {
            steps {
                sh 'docker stack deploy -c Docker-compose.yml  app'
            }
        }
    }
}