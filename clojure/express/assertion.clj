;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (println "before")
  (assert false)
  (println "after"))
