(ns main)

(defn -main [& _]
  (let [jobs (atom [1 2 3])
        take-last! (fn [] (let [[old _] (swap-vals! jobs pop)] (peek old)))]
    (assert (= 3 (take-last!)))
    (println (count @jobs))))
