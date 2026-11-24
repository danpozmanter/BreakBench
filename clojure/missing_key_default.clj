(ns main)

(defn -main [& args]
  (let [stock {"apple" 3 "plum" 4}]
    (println (+ (stock (first args)) 5)))) ; CONTROL! (println (if-let [n (stock (first args))] (+ n 5) "unknown"))))
