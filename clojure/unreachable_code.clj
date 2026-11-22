(ns main)

;; Clojure has no return statement: a function's value is its last expression, so nothing can cut it short.
(defn check []
  (println "ok")
  (println "checked"))

(defn -main [& _]
  (check))
