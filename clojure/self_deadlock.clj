(ns main)

(def lock (Object.))
(def balance (atom 0))

(defn deposit [amount]
  (locking lock
    (swap! balance + amount)))

(defn -main [& _]
  (locking lock
    (deposit 10))
  (println "done"))
