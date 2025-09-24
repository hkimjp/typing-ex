set dotenv-load

prep:
  npm install

watch:
  npx shadow-cljs watch app

compile:
  npx shadow-cljs compile app

dev: nrepl
nrepl:
    lein repl

uberjar:
    lein uberjar

systemd:
    scp systemd/typing-ex.service ${SERV}:typing-ex/
    scp systemd/typing-ex_roll-call.* ${SERV}:typing-ex/
    ssh ${SERV} sudo cp ${SERV}:typing-ex/typing-ex* /lib/systemd/system
    ssh ${SERV} sudo systemctl daemon-reload
    ssh ${SERV} sudo systemctl restart typing-ex_roll-call.timer

deploy: compile uberjar
    scp target/typing-ex-*-standalone.jar ${SERV}:typing-ex/tp.jar
    ssh ${SERV} sudo systemctl restart typing-ex
    ssh ${SERV} sudo systemctl restart typing-ex_roll-call.timer
    ssh ${SERV} systemctl status typing-ex

docker-repl:
    docker compose up -d
    docker exec -it typing-ex-typing-ex-1 sh start-repl.sh

docker-bash:
    docker compose up -d
    docker exec -it typing-ex-typing-ex-1 bash

docker-uberjar:
    docker compose up -d
    docker exec -it typing-ex-typing-ex-1 lein uberjar
    need improve

docker-run:
    docker compose up -d
    docker exec -it typing-ex-typing-ex-1 sh run.sh

down:
    # must stop shadow-cljs
    docker compose down

clean:
    rm -rf target
