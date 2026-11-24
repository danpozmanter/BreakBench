(ns main)

(defn -main [& _]
  (let [count (atom 0)]
    (= @count 5) ; CONTROL! (reset! count 5)
    (println @count)))
