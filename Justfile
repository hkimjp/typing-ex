set dotenv-load

# prepare npm
prep:
    npm install

# shadow-cljs watch app
watch:
    #!/usr/bin/env bash
    if [[ `ps ax | rg '[s]hadow-cljs'` ]]; then \
        echo "shadow-cljs is already running"; \
        kill `ps ax | rg shadow-cljs | awk '{print $1}'`; \
    else \
        npx shadow-cljs watch app; \
    fi

# shadow-cljs release app
release:
    npx shadow-cljs release app

# start repl
repl:
    lein repl

# start shadow-cljs and lein repl.
dev:
    @echo 'duct app. start by (dev) (go)'
    just watch &
    just repl

subl:
    subl .
    just dev

# start app
run: release
    lein run

# stop node and jvm
kill:
    pkill node
    pkill java

# create uberjar
uberjar:
    lein uberjar

# standalone:
#     java -jar --enable-native-access=ALL-UNNAMED target/typing-ex-5.1.1-standalone.jar

# start app
start:
    java -jar --enable-native-access=ALL-UNNAMED tp.jar \
        > log/typing-ex.log 2> log/typing-ex_error.log &

# stop app
stop:
    #!/usr/bin/env bash
    if [[ `ps ax | grep '[t]p.jar'` ]]; then
        kill `ps ax | grep '[t]p.jar' | awk '{print $1}'`
    fi

# start container
up:
    docker compose up -d

# stop container
down:
    docker compose down

# restert container
restart:
    just down
    just up

deploy serv: release uberjar
    @echo must manually set up '.env'
    scp at/*.sh {{serv}}:typing-ex/at/
    scp Justfile compose.yaml target/typing-ex-*-standalone.jar {{ serv }}:typing-ex/
    ssh {{ serv }} 'cd typing-ex && mv typing-ex-*-standalone.jar tp.jar && just restart'

# staging
stage:
    just deploy ${STAGE}

# deploy production
prod:
    just deploy ${PROD}

# cleanup
clean:
    rm -rf target
    fd -I \.bak$ --exec rm
