(ns main)

(defn -main [& _]
  (let [inbox (promise)
        go-on (promise)
        worker (future (let [received @inbox]
                         @go-on
                         (println (first received))))
        lst [1 2 3]]
    (deliver inbox lst)
    (let [changed (assoc lst 0 99)]
      (deliver go-on (first changed)))
    @worker
    (shutdown-agents)))
