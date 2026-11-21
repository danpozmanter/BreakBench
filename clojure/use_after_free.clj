(ns main)

(defn -main [& _]
  (let [a (atom {:value 1234})
        b @a]
    (reset! a nil)
    (let [others (doall (repeatedly 16 #(hash-map :value 6666)))]
      (binding [*out* *err*] (println (count others))))
    (println (:value b))))
