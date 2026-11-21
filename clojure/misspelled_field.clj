(ns main)

(defn -main [& _]
  (let [cfg {:color "blue"}
        cfg (assoc cfg :colour "red")]
    (println (:color cfg))))
