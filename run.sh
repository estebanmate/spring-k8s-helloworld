docker build --tag k8sample:1.0 .
docker run --publish 8090:8090 --detach --name k8sample k8sample:1.0
