;; LEVEL: LANGUAGE

(ns main)

(defmacro check-fits [n]
  (assert (<= n 255) (str n " does not fit in a byte"))
  nil)

(check-fits 100)
(check-fits 300) ; REJECT!

(defn -main [& _]
  (println 100))
