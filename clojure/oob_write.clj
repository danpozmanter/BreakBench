(ns main)

(defn -main [& args]
  (let [frame {:buf (long-array 4) :guard 7}]
    (aset (:buf frame) (parse-long (first args)) 99) ; CONTROL! (let [i (parse-long (first args))] (when (< -1 i 4) (aset (:buf frame) i 99)))
    (println (:guard frame))))
