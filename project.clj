(defproject typing-ex "4.41-SNAPSHOT"
  :description "typing exercises for literacy classes"
  :url "https://tp.melt.kyutech.ac.jp"
  :min-lein-version "2.0.0"
  :dependencies [[buddy/buddy-auth "3.0.323"]
                 [buddy/buddy-hashers "2.0.167"]
                 [clojure.java-time/clojure.java-time "1.4.3"]
                 [com.github.seancorfield/next.jdbc "1.3.1048"]
                 [duct/core "0.8.1"]
                 [duct/module.ataraxy "0.3.0"]
                 [duct/module.logging "0.5.0"]
                 [duct/module.sql "0.6.1"]
                 [duct/module.web "0.7.4"]
                 [environ "1.2.0"]
                 [hato "1.0.0"]
                 [hiccup "2.0.0"]
                 [com.taoensso/carmine "3.4.1"]
                 ;; [com.taoensso/encore "3.152.0"]
                 ;; [com.taoensso/telemere "1.0.1"]
                 [org.clojure/clojure "1.12.1"]
                 [org.postgresql/postgresql "42.7.7"]]
  :plugins [[duct/lein-duct "0.12.3"]]
  :main ^:skip-aot typing-ex.main
  :resource-paths ["resources" "target/resources"]
  :prep-tasks     ["javac" "compile" ["run" ":duct/compiler"]]
  :middleware     [lein-duct.plugin/middleware]
  :profiles
  {:dev  [:project/dev :profiles/dev]
   :repl {:prep-tasks   ^:replace ["javac" "compile"]
          :repl-options {:init-ns user}}
   :uberjar {:aot :all}
   :profiles/dev {}
   :project/dev  {:source-paths   ["dev/src"]
                  :resource-paths ["dev/resources"]
                  :dependencies   [[integrant/repl "0.4.0"]
                                   [hawk "0.2.11"]
                                   [eftest "0.6.0"]
                                   [fipp "0.6.29"]
                                   [kerodon "0.9.1"]]}})
