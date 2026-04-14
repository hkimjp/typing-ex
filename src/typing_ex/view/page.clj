(ns typing-ex.view.page
  (:refer-clojure :exclude [abs])
  (:require
   [ataraxy.response :as response]
   [environ.core :refer [env]]
   [hiccup2.core :as h]
   [java-time.api :as jt]
   [ring.util.anti-forgery :refer [anti-forgery-field]]
   [typing-ex.plot :refer [scatter]]))

(def ^:private version "5.4.5")

;--------------------------------
(defn- ss
  "shorten string"
  [s]
  (subs (str s) 0 16))

(defn- db-aux [from to ret]
  (if (pos? (.compareTo from to))
    ret
    (db-aux (-> (jt/plus (jt/local-date from) (jt/days 1)) str)
            to
            (conj ret from))))

(defn days-between [from to]
  (db-aux from to []))

; from konpy utils.
(defn weeks
  "Returns how many weeks have passed since the argument `date`.
   If no argument given, use the `start`day` defnied above."
  ([] (weeks (jt/local-date)))
  ([date]
   (let [start-day (jt/local-date 2025 4 9)]
     (quot (jt/time-between start-day date :days) 7))))

;--------------------------------

(defn page [& contents]
  [::response/ok
   (str
    (h/raw "<!DOCTYPE html>")
    (h/html
     [:head
      [:meta {:charset "utf-8"}]
      [:meta {:name "viewport" :content "width=device-width, initial-scale=1"}]
      [:link {:rel  "stylesheet"
              :type "text/css"
              :href "/css/bootstrap.min.css"}]
      [:link {:rel "stylesheet"
              :type "text/css"
              :href "/css/style.css"}]
      [:title "Typing-Ex"]]
     [:body
      [:div {:class "container"}
       contents
       [:hr]
       "hkimura " version]
      [:script {:type  "text/javascript"
                :src   "/js/bootstrap.bundle.min.js"
                :defer "true"}]
      [:script {:src "/js/compiled/main.js"
                :type "text/javascript"}]]))])

(defn alert-form [_]
  (page
   [:h2 "Typing: Alert"]
   [:form
    {:methood "post" :action "/alert"}
    (h/raw (anti-forgery-field))
    [:textfield {:placeholder "alert" :size 70} "alert"]
    [:br]
    [:button  "set"]]))

(defn login-page [req]
  (page
   [:h2 "Typing: Login"]
   [:p "授業はじめの出席取りの時間（背景が黄色）は教室外部からログインできない。"]
   [:div.text-danger (:flash req)]
   [:form
    {:method :post :action "/login"}
    (h/raw (anti-forgery-field))
    [:input {:placeholder "アカウント" :name "login"}]
    [:input {:placeholder "パスワード" :type :password :name "password"}]
    [:button  "login"]]
   [:br]
   [:ul
    [:li "焦らず、ゆっくり、正しい指使いがタイピングが上達の早道。"]
    [:li "10 分練習したら休憩入れよう。"]
    [:li "練習しないと平常点にならない。"]
    [:li "Invalid Anti-Foregry-Token はパスワードの賞味期限切れ。"
     "再ログインしてください。"]]))

; changed to public
(defn headline
  "リンクボタンの並び。n は後方互換のために残っている。"
  [_n]
  [:div {:style "margin-left:1rem;"}
   [:div.d-inline
    [:a {:href "/"
         :class "btn btn-primary btn-sm"} "Go!"] " "
    [:a {:href "/rc"
         :class "btn roll-call btn-sm"} "RC"] " "
    [:a {:href "https://jpy.melt.kyutech.ac.jp/"
         :class "btn btn-success btn-sm"} "JPY"] " "
    [:a {:href "https://kpy.melt.kyutech.ac.jp/"
         :class "btn btn-info btn-sm"} "KPY"] " "
    [:a {:href "https://qa.melt.kyutech.ac.jp/"
         :class "btn btn-info btn-sm"} "QA"] " "
    [:a {:href "https://p.melt.kyutech.ac.jp/"
         :class "btn btn-success btn-sm"} "p"] " "
    [:a {:href "/logout"
         :class "btn btn-warning btn-sm"} "Logout"]]
   [:br]
   [:div.d-inline
    [:a {:href "/day-by-day"
         :class "btn btn-danger btn-sm"} "last 7 days"] " "
    [:a {:href "/weekly-points"
         :class "btn btn-danger btn-sm"} "weekly points"] " "
    [:a {:href "/todays"
         :class "btn btn-primary btn-sm"} "todays"] " "
    [:a {:href "/total/7"
         :class "btn btn-primary btn-sm"} "totals"]]
   [:br]
   [:div "学外からの JPY と p は VPN が必要。"]])

(defn scores-page
  "maxpt: 最高点
   ex-days: 練習日数
   user: アカウント
   days: 何日間のデータか？"
  [max-pt _ex-days user days]
  (page
   [:h2 "Typing: Last " days " days Maxes"]
   (headline days)
   [:div {:style "margin-left:1rem;"}
    [:p "[正確さ] + [残し秒数] + [ボーナス] でプログラム上の最高点は 169。"]
    (into [:ol
           (for [{:keys [max login]} max-pt]
             [:li {:style "font-family: monospace"}
              max
              " "
              [:a {:href (str "/record/" login)
                   :class (if (= login user) "yes" "other")}
               login]])])]))

(defn ex-days-page
  "self はログインアカウント、
   data はソーティング済みの[[login days] ...]"
  [self data]
  (let [thres (weeks)]
    (page
     [:h2 "Typing: 30 回以上練習した日数"]
     (headline 7)
     [:div {:style "margin-left:1rem;"}
      [:p "30 回以上練習した日が授業開始からの経過週の数以上ある人たち。"]
      (into [:ol
             (for [[login n] data]
               (when (<= thres n)
                 [:li
                  (format "(%d) " n)
                  " "
                  [:a {:href (str "/record/" login)
                       :class (if (= login self) "yes" "other")}
                   login]]))])])))

(defn- select-count-distinct
  "select count(distinct(timestamp::DATE)) from results
  where login='hkimura'; を clojure で。"
  [ret]
  (count (->> ret
              (map :timestamp)
              (map jt/local-date)
              (map str)
              (group-by identity))))

(defn- today? [ts]
  (= (jt/local-date)
     (jt/local-date ts)))

(defn- average [coll]
  (/ (reduce + coll) (count coll)))

;; データがない日もあるので、from は外から与えないといけない。
(defn- average-day-by-day
  [from to scores]
  ;; (prn "page/averagge-day-by-day" from to (str scores))
  (let [averages (->> scores
                      (map (fn [x] [(:pt x) (subs (str (:timestamp x)) 0 10)]))
                      (group-by second)
                      (map (fn [x] [(key x) (int (average (map first (val x))))]))
                      (into {}))]
    (map #(averages % 0) (days-between from to))))

(defn display-records
  [login scores _me? _admin?]
  (let [avg (/ (reduce + (map :pt (take 10 (reverse scores)))) 10.0)
        todays (filter #(today? (:timestamp %)) scores)]
    (page
     [:h2 "Typing: " login " Records"]
     [:p "毎日 10 分 x 3 セット。"
      [:span {:style "color: red"} " --- 100点"]
      [:span {:style "color: blue"} " --- 60点"]
      [:span {:style "color: green"} " --- 30点"]
      [:span {:style "color: black"} " --- 0点"]
      [:br]
      "TOTAL は全スコア、DAY BY DAY は一日平均。10回以上練習で TODAYS が現れる。"]
     ;; start date
     [:div.d-inline-flex
      [:div.px-2.mx-auto
       (scatter 300 150 (map :pt scores))
       [:br]
       [:b "TOTAL"]]
      (when (< 9 (count todays))
        [:div.px-2.mx-auto
         (scatter 300 150 (map :pt todays))
         [:br]
         [:b "TODAYS"]])
      [:div.px-2]]

     ;; 最初の日から今日までの日付を横軸とするグラフを（別に）書く。
     ;; start date を合わせなくちゃ。
     ;; 欠測の日もあるので、scores からは start-day を出せない。
     [:div.px-2
      (scatter 300 150 (average-day-by-day
                        (or (env :tp-start) "2023-04-01")
                        (str (jt/local-date))
                        scores))
      [:br]
      [:b "DAY BY DAY"]]
     [:br]
     [:br]
     (when true ;; (or me? admin?)
       [:ul
        [:li [:span.b "Max: "] (apply max (map :pt scores))]
        [:li [:span.b "Average (last 10): "]  avg]
        [:li [:span.b "Exercise days: "] (select-count-distinct scores)]
        [:li [:span.b "Exercises (today/total): "] (count todays) "/" (count scores)]
        [:li [:span.b "Last Exercise: "] (ss (str (:timestamp (last scores))))]])
     [:p
      [:a {:href "/" :class "btn btn-primary btn-sm"} "Go!"]
      " "
      [:a {:href "/todays" :class "btn btn-danger btn-sm"} "todays"]])))

;; use in core.clj.
(defn active-users-page [ret]
  (page
   [:h2 "Typing: Last 40 trials"]
   [:p "最近の Typing ユーザ 40 件。連続するセッションを１つとカウントするが、
        セッションの間に別ユーザが割り込むと別セッションに。改良するか？"]
   (into [:ol]
         (for [[u & _] ret]
           [:li (ss (:timestamp u)) " " (:login u)]))))

(defn abbrev10 [coll]
  (if (< 10 (count coll))
    (print-str (interpose " " (take 10 coll)) " ...")
    (print-str (interpose " " coll))))

;; view of /todays
(defn todays-act-page [ret login]
  ; develop
  (println ret)
  (page
   [:h2 "Typing: Todays"]
   (headline 7)
   [:div {:style "margin-left:1rem;"}
    [:p "タイピング練習した時刻。10回以上は ... で表示。"]
    [:ol
     (for [r (->> ret
                  (sort-by (fn [coll] (:timestamp (last coll))))
                  reverse)]
       (let [name (-> r first :login)
             tp (-> (mapv #(-> % :timestamp jt/local-time str (subs 0 5)) r))]
         [:li {:style "font-family: monospace;"}
          [:a {:href (str "/record/" name)
               :class (if (= login name)
                        "yes"
                        "other")}
           name]
          " "
          [:span (abbrev10 tp)]]))]]))

(defn sums-page [ret user n]
  (page
   [:h2 "Typing: Last " n " days Totals"]
   (headline n)
   [:div {:style "margin-left:1rem;"}
    [:p "タイピング練習は情報基礎の平常点。ユーザ名をクリックしてみよう。"]
    (into [:ol]
          (for [r ret]
            (let [login (:login r)
                  sum (:sum r)]
              (when (< -1 sum)
                [:li {:style "font-family: monospace"}
                 sum
                 " "
                 [:a {:href (str "/record/" login)
                      :class (if (= user login) "yes" "other")}
                  login]]))))]))

(defn stat-page
  "stat は redis-cli> get stat の結果。
   返すべき値は [normal roll-call exam] のどれか。"
  [_request]
  (let [stat ()]
    (page
     [:h2 "Typing: Stat (Redis)"]
     [:form
      {:method "post" :action "/stat"}
      (h/raw (anti-forgery-field))
      (for [val ["normal" "roll-call" "exam"]]
        [:div
         [:input
          (if (= stat val)
            {:type "radio" :name "stat" :value val :checked "checked"}
            {:type "radio" :name "stat" :value val})
          val]])
      "ただいまから"
      [:input {:name "minutes" :value "15" :size 3}] "分間"
      [:input.btn.btn-primary.btn-sm {:type "submit" :value "change"}]])))

;; roll-call
(defn rc-page [ret login]
  (page
   [:h2 (format "Typing: 出席データ(%s)" login)]
   [:p "タイピングの背景が黄色い間にタイプ練習終了した時刻を記録している。"
    [:a {:href "/stat-page"} "[admin only]"]]
   [:ul {:class "roll-call"}
    (for [r ret]
      [:li r])]))

(defn restarts-page [_login ret]
  (page
   [:h2 "Typing: Today's Go!"]
   [:p "苦手を流しちゃ練習にならんやろ。"]
   [:ol
    (for [r ret]
      [:li (:login r) " " (:created_at r)])]))

(defn accuracy-page
  "maxpt: 最高点
   ex-days: 練習日数
   user: アカウント
   days: 何日間のデータか？"
  [acc-login]
  (page
   [:h2 "Typing: Accuracies"]
   (headline 1)
   [:div {:style "margin-left:1rem;"}
    [:p "under construction."]
    (into [:ol
           (for [{:keys [acc login]} acc-login]
             [:li (format "%f %s" acc login)])])]))
