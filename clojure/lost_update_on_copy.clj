(ns main)

(defn -main [& _]
  (let [accounts [{:balance 100}]
        accounts (mapv #(update % :balance + 50) accounts)]
    (println (:balance (first accounts)))))
