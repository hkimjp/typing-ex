docker exec typing-ex-redis-1 redis-cli setex stat 4800 ban
at -f /home/ubuntu/typing-ex/ban-time.sh 10:20 +1weeks
echo `date` >> ban-time.log
