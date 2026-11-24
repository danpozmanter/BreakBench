(ns main)

(defn walk [n]
  (if (zero? n) 0 (mod (+ (* (walk (dec n)) 31) n) 1000000007)))

(defn -main [& args]
  (println (walk (parse-long (first args))))) ; CONTROL! (let [n (parse-long (first args))] (println (loop [i 1 acc 0] (if (> i n) acc (recur (inc i) (mod (+ (* acc 31) i) 1000000007)))))))
