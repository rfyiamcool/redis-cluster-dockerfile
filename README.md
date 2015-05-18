# redis-cluster-dockerfile

系统是基于centos:6.6的，redis的版本是3.01

通过Dockerfile创建redis cluster的image，然后通过创建的镜像批量的生成容器...

可以传递指定IP和端口

```
docker build -t redis_cluster --rm .

docker run -it --net=host redis_cluster 9000

#for daemon

docker run -d --net=host redis_cluster 9000

docker run -it --name=redis_9000 --net=host redis_cluster 9000

OR

docker run -it --net=host redis_cluster 9000 10.10.32.88


docker exec -it redis_9000 bash



for i in {9000..9007};do
    docker run -d --name=redis_$i --net=host redis_cluster $i
done
```
