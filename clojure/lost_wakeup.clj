(ns main)

(defn -main [& _]
  (let [woken (promise)]
    (deliver woken true)
    @(future @woken (println "done"))
    (shutdown-agents)))
