(ns main)

(defn -main [& args]
  (let [qty (parse-long (first args))]
    (println (if qty (str "have " qty) "missing"))))
