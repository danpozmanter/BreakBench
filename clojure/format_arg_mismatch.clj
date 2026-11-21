(ns main)

(defn -main [& _]
  (let [done 3
        total 5]
    (println (format "%d of %d" done)) ; CONTROL! (println (format "%d of %d" done total))
    (binding [*out* *err*] (println total))))
