version: '3.8'
services:
  alist:
    build: .
    ports:
      - "5244:5244"
    volumes:
      - ./data:/opt/alist/data  # 持久化数据存储
    restart: always
