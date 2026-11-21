(ns main)

(defn odd-number? [n] (= (mod n 2) 1))

(defn -main [& args]
  (println (if (odd-number? (parse-long (first args))) "odd" "even")))
