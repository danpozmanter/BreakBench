;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (println (str (reduce *' (repeat 100 2)))))
