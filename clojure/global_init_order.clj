(ns main)

(declare base-value)

(defn base [] base-value)

(def limit (* (base) 2)) ; BREAK!
(def base-value (parse-long "10"))
; CONTROL! (def limit (* (base) 2))

(defn -main [& _]
  (println limit))
