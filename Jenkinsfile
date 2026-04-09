pipeline {
    agent {
        label 'Agent1'
    }

    environment {
        TELEGRAM_BOT_TOKEN = credentials('telegram-bot-token')
        TELEGRAM_CHAT_ID = credentials('telegram-chat-id')
        DEPLOY_SERVER = '178.128.93.188'
        DEPLOY_PATH = '/var/www/laravel'
    }

    post {
        failure {
            script {
                sendTelegramNotification('FAILURE')
            }
        }
        success {
            script {
                sendTelegramNotification('SUCCESS')
            }
        }
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Setup Environment') {
            steps {
                sh 'cp .env.example .env'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'composer install --no-interaction'
                sh 'npm install'
            }
        }

        stage('Build Assets') {
            steps {
                sh 'npm run build'
            }
        }

        stage('Generate Key') {
            steps {
                sh 'php artisan key:generate'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'php artisan test'
            }
        }

        stage('Deploy with Ansible') {
            steps {
                sshagent(['laraval_server']) {  
                    dir('ansible') {
                        sh 'ansible-playbook -i inventory.ini deploy.yml'
                    }
                }
            }
        }
    }
}

def sendTelegramNotification(String status) {
    def emoji = status == 'SUCCESS' ? '✅' : '❌'
    def message = """${emoji} *Jenkins Build Notification*

*Job:* ${env.JOB_NAME}
*Build Number:* #${env.BUILD_NUMBER}
*Status:* ${status}
*URL:* ${env.BUILD_URL}
*Time:* ${new Date().format('yyyy-MM-dd HH:mm:ss')}
"""

    sh """
        curl -s -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \\
            -d chat_id="${TELEGRAM_CHAT_ID}" \\
            -d text="${message}" \\
            -d parse_mode="Markdown"
    """
}
