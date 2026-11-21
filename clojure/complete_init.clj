(ns main)

(defrecord Config [timeout retries])

(defn -main [& _]
  (let [c (->Config 30)] ; CONTROL! (let [c (->Config 30 3)]
    (println (:retries c))))
