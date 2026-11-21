;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (let [lock (Object.)
        counter (long-array 1)
        work #(future (dotimes [_ 100000] (locking lock (aset counter 0 (inc (aget counter 0))))))
        a (work)
        b (work)]
    @a
    @b
    (println (aget counter 0))
    (shutdown-agents)))
