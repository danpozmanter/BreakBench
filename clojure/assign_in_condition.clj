(ns main)

(defn -main [& args]
  (let [x (parse-long (first args))]
    (println (if (= x 1) "one" "not one"))))
