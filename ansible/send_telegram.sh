#!/bin/bash

# Telegram Bot Configuration
TELEGRAM_BOT_TOKEN="${TELEGRAM_BOT_TOKEN}"
TELEGRAM_CHAT_ID="${TELEGRAM_CHAT_ID}"

# Jenkins environment variables
JOB_NAME="${JOB_NAME}"
BUILD_NUMBER="${BUILD_NUMBER}"
BUILD_STATUS="${BUILD_STATUS}"
BUILD_URL="${BUILD_URL}"
EXECUTOR_NUMBER="${EXECUTOR_NUMBER}"

# Message formatting
if [ "$BUILD_STATUS" == "SUCCESS" ]; then
    EMOJI="✅"
else
    EMOJI="❌"
fi

MESSAGE="${EMOJI} *Jenkins Build Notification*

*Job:* ${JOB_NAME}
*Build Number:* #${BUILD_NUMBER}
*Status:* ${BUILD_STATUS}
*Executor:* ${EXECUTOR_NUMBER}
*URL:* ${BUILD_URL}
*Time:* $(date '+%Y-%m-%d %H:%M:%S')
"

# Send to Telegram
curl -s -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
    -d chat_id="${TELEGRAM_CHAT_ID}" \
    -d text="${MESSAGE}" \
    -d parse_mode="Markdown"
