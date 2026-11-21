(ns main)

(defn -main [& args]
  (let [v (if (> (count args) 5) (first args) 42)]
    (println (count v))))
