(ns main)

(defn find-age [id] (when (= id 1) 36))

(defn -main [& _]
  (println "before")
  (flush)
  (println (+ (find-age 2) 1)))
