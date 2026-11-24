(ns main)

(defn -main [& _]
  (let [decoded {:name nil}]
    (println (count (:name decoded))))) ; CONTROL! (println (if-let [n (:name decoded)] (count n) "no name"))))
