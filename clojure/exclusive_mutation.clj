(ns main)

(defn transfer [from to amount] ; CONTROL! (defn transfer [from to amount] (when-not (identical? from to)
  (let [new-from (- @from amount)
        new-to (+ @to amount)]
    (reset! from new-from)
    (reset! to new-to))) ; CONTROL! (reset! to new-to))))

(defn -main [& _]
  (let [a (atom 100)]
    (transfer a a 30)
    (println @a)))
