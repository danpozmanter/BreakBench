(ns main)

(defn walk [n]
  (if (zero? n) 0 (mod (+ (* (walk (dec n)) 31) n) 1000000007)))

(defn -main [& args]
  (println (walk (parse-long (first args)))))
