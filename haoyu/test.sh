npm run start-skip-login &
# wait for angular to start up
for try in {1..30}; do
  nc -z localhost 4200 && break
  echo 'waiting for angular to start up...'
  sleep 20
done
# exit with error if angular failed to run
# nc -z localhost 4200 || exit 1

npm run json-server-start &
# wait for json-server to start up
for try in {1..30}; do
  nc -z localhost 9292 && break
  echo 'waiting for json-server to start up...'
  sleep 10
done
