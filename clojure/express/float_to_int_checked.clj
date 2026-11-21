;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (println (try
             (long ##NaN)
             (catch IllegalArgumentException _ "does not fit"))))
