FROM --platform=$TARGETPLATFORM mongo:latest

# 添加自定义配置
COPY mongod.conf /etc/mongod.conf

# 设置时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 27017
CMD ["mongod", "--config", "/etc/mongod.conf"] 
