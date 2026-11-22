(ns main)

(defn -main [& _]
  (let [answer (promise)]
    (future (deliver answer (Long/parseLong "x")))
    (println @answer)
    (shutdown-agents)))
