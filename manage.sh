#!/bin/bash
cd /app/redis
redis_port=$1
echo $redis_port
cd /app/redis
sed -i "s/6379/$redis_port/g" redis.conf
sed -i 's/# cluster-enabled yes/cluster-enabled yes/g' redis.conf
sed -i 's/# cluster-node-timeout 15000/cluster-node-timeout 15000/g' redis.conf
sed -i "s/# cluster-config-file nodes.*/cluster-config-file nodes-$redis_port.conf/g" redis.conf
redis-server redis.conf
while 1;do
        sleep 30;
done
