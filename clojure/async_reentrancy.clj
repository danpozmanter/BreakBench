(ns main
  (:require [clojure.core.async :refer [go <! <!! timeout]]))

(def balance (atom 100))

(defn withdraw [amount]
  (go
    (when (>= @balance amount) ; CONTROL! (when (>= (first (swap-vals! balance #(if (>= % amount) (- % amount) %))) amount)
      (<! (timeout 10)) ; CONTROL! (<! (timeout 10)))))
      (swap! balance - amount)))) ; BREAK!

(defn -main [& _]
  (let [first-withdrawal (withdraw 80)
        second-withdrawal (withdraw 80)]
    (<!! first-withdrawal)
    (<!! second-withdrawal))
  (println @balance)
  (shutdown-agents))
