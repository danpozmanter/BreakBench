;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (let [worker (future (throw (ex-info "bad input" {})))]
    (try
      @worker
      (catch java.util.concurrent.ExecutionException e
        (println (ex-message (ex-cause e)))))
    (shutdown-agents)))
