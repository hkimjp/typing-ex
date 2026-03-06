set dotenv-load

prep:
  npm install

watch:
  npx shadow-cljs watch app

release:
  npx shadow-cljs release app

nrepl:
    lein repl

dev:
    @echo 'duct app. start by (dev) (go)'
    just watch >/dev/null 2>&1 &
    just nrepl

run: release
    lein run

kill:
    pkill node
    pkill java

uberjar:
    lein uberjar

systemd serv:
    scp systemd/typing-ex.service {{serv}}:typing-ex/
    scp systemd/typing-ex_roll-call.* {{serv}}:typing-ex/
    ssh {{serv}} sudo cp {{serv}}:typing-ex/typing-ex* /lib/systemd/system
    ssh {{serv}} sudo systemctl daemon-reload
    ssh {{serv}} sudo systemctl restart typing-ex_roll-call.timer

deploy serv: release uberjar
    scp target/typing-ex-*-standalone.jar {{serv}}:typing-ex/tp.jar
    ssh {{serv}} sudo systemctl restart typing-ex
    ssh {{serv}} sudo systemctl restart typing-ex_roll-call.timer
    ssh {{serv}} systemctl status typing-ex

stage:
    just deploy ${STAGE}

prod:
    just deploy ${PROD}
