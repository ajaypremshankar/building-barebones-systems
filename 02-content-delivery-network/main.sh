# remove docker containers if already running

echo "START: ------------------Removing existing containers------------------"
docker ps -a --format "{{.ID}} {{.Names}}" | awk '$2 ~ /^*content-delivery*/ {print $1}' | xargs docker stop
echo "FINISH: ------------------Removing existing containers------------------"

echo "START: ------------------Orchastrating CDN system------------------\n"
docker compose up --build -d &> /dev/null
echo "FINISH: ------------------Orchastrating CDN system------------------\n"

echo "START: ------------------Making HTTP call to CDN system------------------\n"
curl -I http://localhost:6001/kitty.jpg

echo "FINISH: ------------------Making HTTP call to CDN system------------------\n"