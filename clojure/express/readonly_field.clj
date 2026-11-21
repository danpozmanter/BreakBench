;; LEVEL: LANGUAGE

(ns main)

(defrecord Config [port])

(defn -main [& _]
  (let [c (->Config 8080)]
    (try
      (set! (.-port c) 1)
      (catch Exception _ nil))
    (println (:port c))))
