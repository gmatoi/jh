# 使用官方 Alist 镜像
FROM xhofe/alist:latest

# 复制自定义前端文件（如果构建了前端）
COPY web/dist /opt/alist/public

# 暴露端口
EXPOSE 3000

# 启动 Alist
CMD ["./alist", "server"]
