set dotenv-load := true

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

start:
    java -jar --enable-native-access=ALL-UNNAMED tp.jar \
        > log/typing-ex.log 2> log/typing-ex_error.log

stop:
    #!/usr/bin/env bash
    if [[ `ps ax | grep '[t]p.jar'` ]]; then
        kill `ps ax | grep '[t]p.jar' | awk '{print $1}'`
    fi

restart:
    just stop
    just start

timer serv:
    ssh {{ serv }} 'mkdir -p typing-ex/timer typing-ex/log'
    scp timer/typing-ex_roll-call.* {{ serv }}:typing-ex/systemd/
    ssh {{ serv }} 'sudo cp typing-ex/timer/typing-ex_roll-call.* /lib/systemd/system/'
    ssh {{ serv }} 'sudo systemctl daemon-reload'
    ssh {{ serv }} 'sudo systemctl enable typing-ex_roll-call.timer'
    ssh {{ serv }} 'sudo systemctl start typing-ex_roll-call.timer'
    ssh {{ serv }} 'sudo systemctl status typing-ex_roll-call.timer'

deploy serv: release uberjar
    scp Justfile .env target/typing-ex-*-standalone.jar {{ serv }}:typing-ex/
    ssh {{ serv }} 'cd typing-ex && mv typing-ex-*-standalone.jar tp.jar'
    ssh {{ serv }} 'cd typing-ex && just restart &'


stage:
    just deploy ${STAGE} &

prod:
    just deploy ${PROD}
