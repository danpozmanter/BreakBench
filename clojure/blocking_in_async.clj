(ns main)

(defn -main [& _]
  (let [start (System/nanoTime)
        a (future (Thread/sleep 500))
        b (future (Thread/sleep 500))]
    @a
    @b
    (println (if (< (/ (- (System/nanoTime) start) 1e6) 800) "concurrent" "serial"))
    (shutdown-agents)))
