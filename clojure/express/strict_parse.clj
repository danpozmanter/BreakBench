;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (println (or (parse-long "12abc") "invalid")))
