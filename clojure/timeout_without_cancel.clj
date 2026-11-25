(ns main)

(def balance (atom 100))
(def gate (promise))

(defn charge []
  @gate
  (swap! balance - 30))

(defn -main [& _]
  (let [attempt (future (charge))]
    (when (= :timeout (deref attempt 100 :timeout))
      (deliver gate true)
      (charge)) ; BREAK!
      ; CONTROL! (deliver gate true))
    @attempt
    (println @balance)
    (shutdown-agents)))
