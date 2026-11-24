(ns main)

(defn -main [& _]
  (let [cfg {:color "blue"}
        cfg (assoc cfg :colour "red")] ; CONTROL! cfg (assoc cfg :color "red")]
    (println (:color cfg))))
