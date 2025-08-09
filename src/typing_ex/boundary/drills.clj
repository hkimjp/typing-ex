(ns typing-ex.boundary.drills
  (:require
   [duct.database.sql]
   [next.jdbc.sql :as sql]
   [typing-ex.boundary.utils :refer [ds-opt]]))

(defprotocol Drills
  (fetch-drill [db]))

(extend-protocol Drills
  duct.database.sql.Boundary

  (fetch-drill [db]
    (-> (sql/query (ds-opt db)
                   ["select text from drills order by random() limit 1"])
        first
        :text)))
