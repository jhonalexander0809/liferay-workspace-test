FROM ubuntu:18.04
COPY . /app
RUN make /app
CMD python /app/app.py

docker exec -it liferay /bin/sh

chmod a+w /opt/liferay
mkdir /opt/liferay/temp-deploy
docker cp test-Theme-1.0.0.war 23ca2583819d:/opt/liferay/temp-deploy/
cp /opt/liferay/temp-deploy/test-Theme-1.0.0.war /opt/liferay/deploy/

ejecutar comando cp en el contenedor


D:\Desarrollo\Periferia\Liferay\POC\liferay-workspace-test\workspace-Test\wars\test-Theme\build\libs

docker logs liferay -f


docker run -it -p 8888:8080 --name liferay liferay/portal:7.1.0-ga1-201809012030

docker exec -d liferay mkdir -p /opt/liferay/temp-deploy
docker exec -d liferay chmod a+w /opt/liferay/
docker cp test-Theme-1.0.0.war 23ca2583819d:/opt/liferay/temp-deploy/

docker exec -d liferay chmod a+w /opt/liferay/