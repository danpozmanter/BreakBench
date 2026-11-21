(ns main)

(defn -main [& _]
  (let [evens (filter even? (range 1 7))]
    (println (reduce + evens) (count evens))))
