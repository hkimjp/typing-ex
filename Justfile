set dotenv-load := true

prep:
    npm install

watch:
    #!/usr/bin/env bash
    if [[ `ps ax | rg '[s]hadow-cljs'` ]]; then \
        echo "shadow-cljs is already running"; \
        kill `ps ax | rg shadow-cljs | awk '{print $1}'`; \
    else \
        npx shadow-cljs watch app; \
    fi

release:
    npx shadow-cljs release app

repl:
    lein repl

dev:
    @echo 'duct app. start by (dev) (go)'
    just watch &
    just repl

run: release
    lein run

kill:
    pkill node
    pkill java

uberjar:
    lein uberjar

standalone:
    java -jar --enable-native-access=ALL-UNNAMED target/typing-ex-5.1.1-standalone.jar

start:
    java -jar --enable-native-access=ALL-UNNAMED tp.jar \
        > log/typing-ex.log 2> log/typing-ex_error.log &

stop:
    #!/usr/bin/env bash
    if [[ `ps ax | grep '[t]p.jar'` ]]; then
        kill `ps ax | grep '[t]p.jar' | awk '{print $1}'`
    fi

up:
    docker compose up -d

down:
    docker compose down

restart:
    just down
    just up

deploy serv: release uberjar
    @echo must manually set up '.env'
    scp Justfile compose.yaml target/typing-ex-*-standalone.jar {{ serv }}:typing-ex/
    ssh {{ serv }} 'cd typing-ex && mv typing-ex-*-standalone.jar tp.jar && just restart'

stage:
    just deploy ${STAGE}

prod:
    just deploy ${PROD}

clean:
    rm -rf target
    fd -I \.bak$ --exec rm
