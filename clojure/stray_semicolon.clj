(ns main)

(defn size [n]
  (if (> n 5) "big" "small"))

(defn -main [& args]
  (doseq [a (take 2 args)]
    (println (size (parse-long a)))))
