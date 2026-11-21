(ns main)

(defn -main [& _]
  (let [first-item (atom 1)
        items (reduce (fn [v i] (conj v (atom i))) [first-item] (range 1000))
        w [(atom 7)]]
    (reset! (first items) 99)
    (println @(first w))))
