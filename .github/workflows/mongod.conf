FROM mongo:latest

# 创建必要的目录
RUN mkdir -p /data/db /var/log/mongodb \
    && chown -R mongodb:mongodb /data/db /var/log/mongodb

# 添加自定义配置
COPY mongod.conf /etc/mongod.conf
RUN chown mongodb:mongodb /etc/mongod.conf

# 设置时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 设置工作目录
WORKDIR /data

# 暴露端口
EXPOSE 27017

# 使用mongodb用户运行
USER mongodb

# 启动命令
CMD ["mongod", "--config", "/etc/mongod.conf"] 
