docker exec typing-ex-redis-1 redis-cli setex stat 900 roll-call
at -f /home/ubuntu/typing-ex/roll-call.sh 10:20 +1weeks
echo `date` >> roll-call.log
