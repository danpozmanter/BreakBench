(ns main)

(defn node []
  (atom {:data (byte-array 4096 (byte 1)) :other nil}))

(defn -main [& args]
  (let [n (parse-long (first args))]
    (dotimes [_ n]
      (let [parent (node)
            child (node)]
        (swap! parent assoc :other child)
        (swap! child assoc :other parent)))
    (println "done")))
