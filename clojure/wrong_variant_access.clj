(ns main)

(defn -main [& args]
  (let [v (if (> (count args) 5) (first args) 42)]
    (println (count v)))) ; CONTROL! (println (if (string? v) (count v) "not text"))))
