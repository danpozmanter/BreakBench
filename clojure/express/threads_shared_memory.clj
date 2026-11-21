;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (let [slots (long-array 10)
        fill (fn [lo] (future (doseq [i (range lo (+ lo 5))] (aset slots i (long i)))))
        a (fill 0)
        b (fill 5)]
    @a
    @b
    (println (reduce + slots))
    (shutdown-agents)))
