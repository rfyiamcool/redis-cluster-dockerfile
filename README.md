# redis-cluster-dockerfile

系统是基于centos:6.6的，redis的版本是3.01

通过Dockerfile创建redis cluster的image，然后通过创建的镜像批量的生成容器...

```
docker build -t redis_cluster --rm .

docker run -it --net=host redis_cluster 9000

```
