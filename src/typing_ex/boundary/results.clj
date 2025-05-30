(ns typing-ex.boundary.results
  (:require
   [clojure.string :as str]
   [duct.database.sql]
   [next.jdbc.date-time]
   [next.jdbc.sql :as sql]
   [typing-ex.boundary.utils :refer [ds ds-opt]]))

(next.jdbc.date-time/read-as-local)

(defprotocol Results
  (day-by-day [db user])
  (insert-pt [db rcv])
  (sum [db n])
  (find-max-pt [db n])
  (fetch-records [db login])
  (fetch-records-since [db login date])
  (todays-score [db login])
  (active-users [db n])
  ;; (find-ex-days-thres [db days thres])
  (find-ex-days [db days])
  (todays-act [db])
  ;; 2024-04-18
  (users [db])
  (login-timestamp [db]))

(extend-protocol Results
  duct.database.sql.Boundary

  (day-by-day [db user]
    (let [sql "select timestamp::DATE, pt from results
               where login=?
               and timestamp > now() - interval '1 week'
               order by id"
          ret (sql/query (ds-opt db) [sql user])]
      (mapv (fn [{:keys [timestamp pt]}]
              [(str timestamp) pt]) ret)))

  (insert-pt [db login-pt]
    (sql/insert! (ds-opt db) :results login-pt))

  (sum [db n]
    (let [sql (format
               "select login, sum(pt)
                from results
                where timestamp::DATE >=  CURRENT_DATE - %d
                group by login
                order by sum(pt) desc" n)
          ret (sql/query (ds-opt db) [sql])]
      ret))

  (find-max-pt [db n]
    (let [tmp "select login, max(pt) from
                (select * from results where
                   timestamp > CURRENT_TIMESTAMP - interval 'XX days') as rslt
                 group by login
                 order by max(pt) desc"
          sql (str/replace tmp #"XX" (str n))]
      (sql/query (ds-opt db) [sql])))

  (fetch-records [db login]
    (sql/query
     (ds-opt db)
     ["select pt, timestamp from results
                 where login=?
                 order by id asc" login]))

  (fetch-records-since
    [db login date]
    (prn "date:" date)
    (sql/query
     (ds-opt db)
     ["select pt, timestamp from results
       where login=? and timestamp > date(?)
       order by id asc" login date]))

  (todays-score [db login]
    (sql/query
     (ds-opt db)
     ["select pt from results
                 where login=? and date(timestamp) = CURRENT_DATE
                 order by id asc" login]))

  (active-users [db n]
    (let [ret (sql/query
               (ds-opt db)
               ["select login, timestamp from results order by id desc"])]
      (->> ret
           (partition-by :login)
           (take n))))

  (find-ex-days [db days]
    (let [q (str/replace "select login, date(timestamp) from results
                 where date(timestamp) > CURRENT_DATE - INTERVAL 'XXX' day
                 group by login, date(timestamp)"
                         #"XXX" (str days))
          ret (sql/query (ds-opt db) [q])]
      ret))

  (todays-act
    [db]
    (sql/query
     (ds-opt db)
     ["select login, timestamp from results
       where timestamp::DATE=current_date
       order by login, timestamp desc"]))

  ;; 2024-04-18
  (users
    [db]
    (sql/query
     (ds-opt db)
     ["select distinct(login) from results"]))

  (login-timestamp
    [db]
    (sql/query (ds-opt db) ["select login, timestamp::date from results"])))
