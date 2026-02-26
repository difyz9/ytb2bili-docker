FROM difyz9/ytb2bili-base

LABEL maintainer="difyz9" \
      image="difyz9/ytb2bili"

WORKDIR /app

# 复制 arm64 可执行文件和配置文件
COPY ytb2bili-linux-arm64 ./ytb2bili
COPY config.toml ./config.toml

# 创建数据目录并赋予执行权限
RUN mkdir -p ./data ./media \
    && chmod +x ./ytb2bili

EXPOSE 5688

CMD ["./ytb2bili"]
