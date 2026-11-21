(ns main)

(defn -main [& args]
  (let [[x y] (map parse-double args)]
    (println (if (== (+ x y) 0.3) "equal" "not equal"))))
