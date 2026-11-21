(ns main)

(defn -main [& args]
  (let [n (parse-long (first args))
        head (reduce (fn [nxt i] {:value i :next nxt}) nil (range n))]
    (binding [*out* *err*] (println (:value head)))
    (println "done")))
