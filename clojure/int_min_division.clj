(ns main)

(defn -main [& args]
  (let [[a b] (map parse-long args)]
    (println (quot a b)))) ; CONTROL! (println (str (quot (bigint a) b)))))
