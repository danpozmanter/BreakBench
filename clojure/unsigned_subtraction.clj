(ns main)

(def header 5)

(defn -main [& args]
  (let [payload (- (count (first args)) header)]
    (println (if (neg? payload) "short" payload))))
