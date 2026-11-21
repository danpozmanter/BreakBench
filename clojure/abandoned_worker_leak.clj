(ns main)

(defn -main [& args]
  (let [rounds (parse-long (first args))]
    (dotimes [i rounds]
      (let [answer (promise)]
        (dotimes [w 2]
          (future (deliver answer (long-array 8192 (+ i w)))))
        (when (not= (alength ^longs @answer) 8192)
          (println "short"))))
    (println "done")
    (shutdown-agents)))
