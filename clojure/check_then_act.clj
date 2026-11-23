(ns main)

(def lock (Object.))
(def ^java.util.concurrent.CountDownLatch checked (java.util.concurrent.CountDownLatch. 2))
(def claimed (atom false))
(def winners (atom 0))

(defn claim []
  (let [available (locking lock (not @claimed))] ; BREAK!
    ; CONTROL! (let [available (locking lock (let [v (not @claimed)] (when v (reset! claimed true)) v))]
    (.countDown checked)
    (.await checked)
    (when available
      (locking lock (reset! claimed true) (swap! winners inc)))))

(defn -main [& _]
  (let [a (future (claim)) b (future (claim))]
    @a @b
    (println @winners)
    (shutdown-agents)))
