# 使用官方 Alist 镜像
FROM xhofe/alist:latest

# 设置工作目录
WORKDIR /opt/alist

# 复制自定义配置文件（如果有）
COPY config.json /opt/alist/data/config.json

# 复制自定义前端文件（如果有）
COPY web/dist /opt/alist/public

# 暴露端口
EXPOSE 5244

# 设置环境变量（可选）
ENV PASSWORD=your_admin_password

# 启动 Alist
CMD ["./alist", "server"]
