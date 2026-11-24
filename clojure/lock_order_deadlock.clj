(ns main)

(def a (Object.))
(def b (Object.))
(def ready (java.util.concurrent.CountDownLatch. 2))

(defn transfer [first-lock second-lock]
  (locking first-lock
    (.countDown ready) ; BREAK!
    (.await ready) ; BREAK!
    (locking second-lock
      :done)))

(defn -main [& _]
  (let [t1 (future (transfer a b))
        t2 (future (transfer b a))] ; CONTROL! t2 (future (transfer a b))]
    @t1
    @t2
    (println "finished")
    (shutdown-agents)))
