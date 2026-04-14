(ns typing-ex.typing
  (:require
   [cljs-http.client :as http]
   [cljs.core.async :refer [go <!]]
   [clojure.string :as str]
   [reagent.core :as r]
   [reagent.dom :as rdom]
   [typing-ex.plot :refer [bar-line-chart]]
   [goog.string :as gstring]
   [goog.string.format]))

(comment
  (System/getenv "Home")
  :rcf)

(def ^:private version "5.4.5")

(def ^:private todays-limit 10)

;; bump-version.sh will rewrite
(def ^:private timeout 10)

(def interval (atom 1000)) ;; milli second

(defonce ^:private app-state
  (r/atom  {:text      "App is starting..." ;;
            :answer    ""
            :seconds   timeout
            :errors    0
            :words     ""
            :words-max 0
            :pos       0
            :results   []
            :todays    []
            :todays%   []
            :todays-trials 0
            :stat      "normal"
            :next      ""
            :goods     0
            :bads      0
            :send?     false}))

(defn csrf-token []
  (.-value (.getElementById js/document "__anti-forgery-token")))

(def ^:private little-prince
  ["An aviator whose plane is forced down in the Sahara Desert
encounters a little prince from a small planet who relates
his adventures in seeking the secret of what is important
in life."

   "Once when I was six years old I saw a beautiful picture in
a book about the primeval forest called 'True Stories'.
It showed a boa constrictor swallowing an animal.
Here is a copy of the drawing."

   "I showed my masterpiece to the grown-ups and asked them if
my drawing frightened them. They answered: 'Why should
anyone be frightened by a hat?' My drawing did not represent
a hat. It was supposed to be a boa constrictor digesting elephant.
"])

(def ^:private moby-dick
  ["Call me Ishmael. Some years ago-never mind how long precisely
having little or no money in my purse, and nothing particular to
interest me on shore, I thought I would sail about a little
and see the watery part of the world."

   "There now is your insular city of the Manhattoes, belted round
by wharves as Indian isles by coral reefs commerce surrounds it
with her surf. Right and left, the streets take you waterward.
Its extreme downtown is the battery, where that noble mole is washed"

   "But look! here come more crowds, pacing straight for the water,
and seemingly bound for a dive. Strange! Nothing will content them
but the extremest limit of the land; loitering under the shady lee
of yonder warehouses will not suffice."])

(def mt (get [little-prince moby-dick] (rand-int 2)))

(defonce ^:private mt-counter (atom -1))

;------------------------------------------
(defn get-login []
  (-> (.getElementById js/document "login")
      (.-value)))

(defn pt [{:keys [seconds errors goods bads]}]
  (let [all (:words-max @app-state)
        bs errors ;; backspace key
        score (int (* 100 (- (/ goods all) (/ bads goods))))]
    (max 0 (cond
             (< goods 10) 0
             (= all goods) (+ score seconds 10) ;; bonus 10
             (= all (+ goods bads)) (+ score seconds (- bs))
             :else (- score bs)))))

(defn- ratio-f
  "return typing collectness. function name is wrong."
  []
  (let [goods     (:goods     @app-state)
        bads      (:bads      @app-state)
        errors    (:errors    @app-state)
        words-max (:words-max @app-state)]
    (js/console.log
     (str "goods " goods " errors " errors " words-max " words-max))
    ;(* 100 (/ (- goods errors) (double words-max)))
    (* 100 (/ goods (+ goods bads errors)))))

(defn- ratio []
  (gstring/format "%4.1f" (ratio-f)))

(defn show-score
  [pt]
  (if (empty? (:results @app-state))
    (js/alert "コピペはダメよ")
    (let [login (get-login)
          s1 (str login " さんのスコアは " pt "点, " (ratio) "%です。")
          s2 (condp <= pt
               100 "すばらしい。最高点取れた？正答率 97%↑ 目指せ。"
               90  "がんばった。もう少しで 100 点だね。"
               60  "だいぶ上手です。この調子でがんばれ。"
               30  "指先を見ずに、ゆっくり、ミスを少なく。"
               "練習あるのみ。")
          ;; msg (str  s1 "\n" s2 "\n(Cancel でタイプデータ表示)")
          ]
      (js/alert (str s1 \newline s2))
      ;; /alert で取れる情報(文字列)をアラートに出す。
      ;; challenge を出す時でもいいんじゃ？
      ; (go (when-let [{:keys [body]} (<! (http/get "/alert"))]
      ;       (when (re-find #"\S" body)
      ;         (js/alert body))))
      ;; 試験成績を記録するならここ。
      ;; (exam-point! (get-login) @mt-counter pt)
      (when (<= todays-limit (:todays-trials @app-state))
        (js/alert (str "連続 "
                       (:todays-trials @app-state)
                       " 回、行きました。他の勉強もしろよ🐥")))
      (swap! app-state update :todays-trials inc))))

(defn- send-point-aux [url pt acc]
  (go (<! (http/post
           url
           {:form-params
            {:__anti-forgery-token (csrf-token), :pt pt, :acc acc}}))
      (js/console.log "send-point-aux: " url pt acc)))

(defn send-point
  "(:todays @app-state) を更新する。(:todays@ @app-state) も更新する。"
  [pt]
  (if (zero? (count (:answer @app-state)))
    (when-not (empty? (:words @app-state))
      (js/alert "タイプ、忘れた？"))
    (let [acc (ratio)]
      (swap! app-state update :todays conj {:pt pt})
      (swap! app-state update :todays% conj (int acc))
      (send-point-aux "/score" pt acc)
      (when (= "roll-call" (:stat @app-state))
        (send-point-aux "/rc" pt acc)))))

(defn reset-display!
  []
  (go (let [stat (-> (<! (http/get "/stat")) :body)
            drill (if (= stat "exam")
                    (do
                      (swap! mt-counter inc)
                      (get mt (mod @mt-counter 3)))
                    (-> (<! (http/get "/drill"))
                        :body))
            words (str/split drill #"\s+")
            next (first words)]
        (js/console.log (str "reset-display! stat " stat))
        (swap! app-state assoc
               :stat      stat
               :text      drill
               :answer    ""
               :seconds   timeout
               :errors    0
               :words     words
               :words-max (count  words)
               :pos       0
               :results   []
               :next      next
               :goods     0
               :bads      0
               :sent?     false)
        (.focus (.getElementById js/document "drill")))))

(defn show-send-reset-display!
  []
  (let [pt (pt @app-state)]
    (when-not (:sent? @app-state)
      (js/console.log (str "show-send-reset-display:" pt))
      (swap! app-state assoc :sent? true)
      (show-score pt)
      (send-point pt)
      (reset-display!))))

(defn- next-word []
  (get (:words @app-state) (:pos @app-state)))

(defn check-word
  "スコアを送信するトリガーが二つある。
   * 例題を打ち切った時。
   * タイムアウトになった時。"
  []
  (let [target (get (@app-state :words) (@app-state :pos))
        typed  (last (str/split (@app-state :answer) #"\s"))
        good? (= target typed)]
    (swap! app-state update :results #(conj % (if good? "🟢" "🔴")))
    (swap! app-state update (if good? :goods :bads) inc)
    (swap! app-state update :pos inc)
    (swap! app-state update :next next-word)
    (when (<= (:words-max @app-state) (:pos @app-state))
      (show-send-reset-display!))))

(defn countdown
  "最初のキーが打たれるまで待つ。
   timeout に達したら、スコア送信、画面をアップデートする。"
  []
  (when-not (empty? (:answer @app-state))
    (swap! app-state update :seconds dec)
    (when (zero? (:seconds @app-state))
      (js/console.log "from countdown")
      (show-send-reset-display!))))

(defn check-key
  "FIXME: 最後のエンターキーを次の画面に持ち越してしまう。"
  [key]
  (case key
    " "         (check-word)
    "Enter"     (check-word)
    "Backspace" (do
                  (swap! app-state update :errors inc)
                  (swap! app-state update :results conj "🟡"))
    nil))

(defn results-component []
  [:span.drill (apply str (:results @app-state))])

(defn ex-page
  []
  [:div {:class (:stat @app-state)}
   [:h2 "Typing: Challenge"]
   [:pre {:id "example"} (:text @app-state)]
   [:textarea {:name "answer"
               :placeholder "単語間のスペースは一個で。手元を見ずに。"
               :id "drill"
               :value (:answer @app-state)
               :on-key-up #(check-key (.-key %))
               :on-change (fn [e] (swap! app-state assoc :answer
                                         (-> e .-target .-value)))}]

   [:div [:span.b "Next: "] [:span {:id "next"} (:next @app-state)]]
   [:div [:span.b "Status: "] [results-component]]
   [:div [:span.b "Remain: "] [:span {:id "seconds"} (:seconds @app-state)]]
    ;; これだと、@app-state がアップデートするたび、チャートをアップデートする。
   [:p
    [:span.b "todays:"]  [:br]
    (bar-line-chart 300 150
                    (map :pt (:todays @app-state)) (:todays% @app-state))]
   ;;
   [:p
    [:a {:href (str "/record/" (get-login)) :class "btn btn-primary btn-sm"} "Graph"]
    " "
    [:a {:href "/logout" :class "btn btn-warning btn-sm"} "Logout"]]
   [:hr]
   [:div "hkimura, " version]])

(defn start []
  (js/setInterval countdown @interval)
  (rdom/render [ex-page] (js/document.getElementById "app"))
  (reset-display!))

(defn ^:export init []
  ;; init is called ONCE when the page loads
  ;; this is called in the index.html and must be exported
  ;; so it is available even in :advanced release builds
  (start))

(defn stop []
  ;; stop is called before any code is reloaded
  ;; this is controlled by :before-load in the config
  (js/console.log "stop"))
