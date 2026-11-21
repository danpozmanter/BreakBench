;; LEVEL: LANGUAGE

(ns main)

(defn -main [& args]
  (println (try
             (+ (parse-long (first args)) 1)
             (catch ArithmeticException _ "overflow"))))
