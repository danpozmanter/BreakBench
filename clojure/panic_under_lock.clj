(ns main)

(def ledger (atom {:debits 0 :credits 0}))

(defn post []
  (swap! ledger (fn [l]
                  (let [l (update l :debits + 50)]
                    (when (pos? (:debits l))
                      (throw (IllegalStateException. "crash mid-update")))
                    (update l :credits + 50)))))

(defn -main [& _]
  (let [worker (future (post))]
    (try
      @worker
      (catch java.util.concurrent.ExecutionException e
        (binding [*out* *err*] (println "worker failed:" (ex-message (ex-cause e))))))
    (let [l @ledger]
      (println (if (= (:debits l) (:credits l)) "balanced" "unbalanced")))
    (shutdown-agents)))
