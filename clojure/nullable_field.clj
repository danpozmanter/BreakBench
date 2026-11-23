(ns main)

(defn -main [& _]
  (let [decoded {:name nil}]
    (println (count (:name decoded)))))
