(ns main)

(def a (Object.))
(def b (Object.))
(def ready (java.util.concurrent.CountDownLatch. 2))

(defn transfer [first-lock second-lock]
  (locking first-lock
    (.countDown ready)
    (.await ready)
    (locking second-lock
      :done)))

(defn -main [& _]
  (let [t1 (future (transfer a b))
        t2 (future (transfer b a))]
    @t1
    @t2
    (println "finished")
    (shutdown-agents)))
