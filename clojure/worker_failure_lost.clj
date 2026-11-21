(ns main)

(defn -main [& args]
  (let [worker (future (reduce + (map parse-long args)))]
    (println "total" @worker)
    (shutdown-agents)))
