(ns main)

(defn -main [& args]
  (println (quot 100 (parse-long (first args))))) ; CONTROL! (let [d (parse-long (first args))] (println (if (zero? d) "cannot divide" (quot 100 d)))))
