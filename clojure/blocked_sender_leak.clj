(ns main)

(defn first-answer []
  (let [answer (promise)
        workers [(future (deliver answer 42)) (future (deliver answer 42))]]
    [@answer workers]))

(defn -main [& _]
  (let [[answer workers] (first-answer)]
    (println answer)
    (run! deref workers)
    (println "done")
    (shutdown-agents)))
