(ns main)

(defn transfer [from to amount]
  (let [new-from (- @from amount)
        new-to (+ @to amount)]
    (reset! from new-from)
    (reset! to new-to)))

(defn -main [& _]
  (let [a (atom 100)]
    (transfer a a 30)
    (println @a)))
