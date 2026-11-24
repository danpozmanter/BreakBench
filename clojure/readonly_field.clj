(ns main)

(defrecord Config [port])

(defn -main [& _]
  (let [c (->Config 8080)]
    (set! (.-port c) 1) ; BREAK!
    (println (:port c))))
