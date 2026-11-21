(ns main)

(def store (atom 0))

(defn save []
  (Thread/sleep 50)
  (swap! store inc))

(defn -main [& _]
  (future (save)) ; CONTROL! @(future (save))
  (println @store)
  (shutdown-agents))
