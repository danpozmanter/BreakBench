(ns main)

(defn grade [score]
  (cond
    (> score 50) "pass"
    (< score 50) "fail"))

(defn -main [& args]
  (println (grade (parse-long (first args)))))
