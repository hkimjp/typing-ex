#!/usr/bin/env bb

(def text (slurp "sicp.text"))

(def lines (str/split text #"\n\n"))

(def mi (map-indexed vector lines))

(defn save2 [[n txt]]
  (spit (format "sicp-%d.txt" n) txt))

(run! save2 mi)
