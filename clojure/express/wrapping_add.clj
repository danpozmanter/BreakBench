;; LEVEL: LANGUAGE

(ns main)

(defn -main [& args]
  (println (unchecked-add (parse-long (first args)) 1)))
