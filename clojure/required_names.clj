(ns main)

(defn move [{:keys [dx dy]}] (println dx dy))

(defn -main [& _]
  (move 4 3))
