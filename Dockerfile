FROM python:3.8.7-alpine
WORKDIR /app
VOLUME ["/data/logs","/data/res"]
RUN echo "Asia/Shanghai" > /etc/timezone
ADD ./* .
ENTRYPOINT exec python main.py