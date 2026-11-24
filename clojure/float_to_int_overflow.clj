(ns main)

(defn -main [& args]
  (let [x (parse-double (first args))]
    (println (long x)))) ; CONTROL! (println (str (bigint x)))))
