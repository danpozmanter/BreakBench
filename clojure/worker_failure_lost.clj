(ns main)

(defn -main [& args]
  (let [worker (future (reduce + (map parse-long args)))]
    (println "total" @worker) ; CONTROL! (println (try (str "total " @worker) (catch Exception _ "failed")))
    (shutdown-agents)))
