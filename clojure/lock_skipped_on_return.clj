(ns main
  (:import (java.util.concurrent.locks ReentrantLock)))

(def ^ReentrantLock lock (ReentrantLock.))
(def balance (atom 100))

;; Clojure has no early return; the unlock follows the conditional on every path.
(defn withdraw [amount]
  (.lock lock)
  (when (<= amount @balance)
    (swap! balance - amount))
  (.unlock lock))

(defn -main [& _]
  (withdraw 500)
  @(future (withdraw 30))
  (println @balance)
  (shutdown-agents))
