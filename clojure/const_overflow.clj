(ns main)

(def span (* 1000000000 60 60 24 365 300)) ; CONTROL! (def span (*' 1000000000 60 60 24 365 300))

(defn -main [& _]
  (println span))
