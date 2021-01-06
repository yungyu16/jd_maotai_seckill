function checkError() {
  if [ $? -ne 0 ]; then
    echo "${1-:'error'}"
    exit 1
  fi
}

docker-compose version
checkError '请安装docker-compose，see: https://docs.docker.com/compose/install/'
docker version
checkError '请安装docker，see: https://docs.docker.com/engine/install/'
docker-compose --verbose up -d --build
checkError '服务启动失败，请重试'
