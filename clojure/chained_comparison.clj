(ns main)

(defn -main [& args]
  (let [x (parse-long (first args))]
    (println (if (< 1 x 3) "inside" "outside"))))
