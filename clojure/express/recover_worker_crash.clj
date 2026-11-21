;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (let [worker (future (throw (RuntimeException. "crash")))]
    (try
      @worker
      (println "worker finished")
      (catch java.util.concurrent.ExecutionException _ (println "worker crashed")))
    (shutdown-agents)))
