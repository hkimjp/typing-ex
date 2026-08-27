(ns typing-ex.totals
  (:require
   [typing-ex.boundary.roll-calls :as roll-calls]
   [typing-ex.boundary.results :as results]))

(defn attend [login]
  (roll-calls/attend login))

(attend "hkimura")
