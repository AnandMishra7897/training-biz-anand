#!/bin/bash

# Change directory to the repo
cd ~/commit-history-task-bizz-training-period

# Capture the history
cat ~/.bash_history > /home/ec2-user//commit-history-task-bizz-training-period/history.txt

# Sync to ensure all writes are flushed to disk
sync

# Add changes to git
git add .

# Commit with the current time as the message
git commit -m "$(date '+%Y-%m-%d %H:%M:%S')"

# Push to GitHub
git push origin main
