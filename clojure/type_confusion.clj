(ns main)

(defn add [a b] (+ a b))

(defn -main [& args]
  (let [raw (first args)]
    (println (add raw 3))))
