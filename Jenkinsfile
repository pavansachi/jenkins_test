pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                
                sh './scripts/run.sh'
                
                sshagent (credentials: ['pavan-git']) {
                    git branch
                    git push origin master
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
