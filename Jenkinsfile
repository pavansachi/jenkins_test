pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                
                sh './scripts/run.sh'
                
                sshagent (credentials: ['pavan-git']) {
                    sh('git config user.email "dev@github.com"')
                    sh('git config user.name "Pavan"')
                    sh('git add version.txt')
                    sh('git status')
                    sh('git commit -m "checking in version"')
                    sh('git branch')
                    sh('git fetch')
                    sh('git pull origin master')
                    sh('git push -f origin master')
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
