(ns user)

(defn dev
  "Load and switch to the 'dev' namespace."
  []
  (require 'dev)
  (in-ns 'dev)
  :loaded)

(comment
  (require '[environ.core :refer [env]])
  (env :database-url)
  (env :postgres-password)
  :rcf)
