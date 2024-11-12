# 基于适用于linux/arm64/v8平台的基础镜像
FROM --platform=linux/arm64/v8 ubuntu:latest

# 安装和配置Redis
RUN apt-get update && apt-get install -y redis-server

# 安装和配置Java
RUN apt-get install -y openjdk-11-jdk

# 安装和配置MySQL
RUN apt-get install -y mysql-server

# 安装和配置Nginx
RUN apt-get install -y nginx

# 其他指令...

# 暴露端口
EXPOSE 80

# 启动服务
CMD service mysql start && service redis-server start && nginx -g 'daemon off;'
