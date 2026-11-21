(ns main)

(defn -main [& args]
  (let [a (= (first args) "1")
        b true]
    (println (if a (if b "both") "not a"))))
