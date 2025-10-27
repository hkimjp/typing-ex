set dotenv-load

prep:
  npm install

watch:
  npx shadow-cljs watch app

compile:
  npx shadow-cljs compile app

nrepl:
    lein repl

dev:
    @echo 'duct app. start by (dev) (go)'
    just watch >/dev/null 2>&1 &
    just nrepl

run: compile
    lein run

kill:
    pkill node
    pkill java

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

eq: compile uberjar
    scp target/typing-ex-*-standalone.jar eq.local:typing-ex/tp.jar
    ssh eq.local sudo systemctl restart typing-ex
    ssh eq.local sudo systemctl restart typing-ex_roll-call.timer
    ssh eq.local systemctl status typing-ex


