(ns main)

(defn describe [s]
  (case s
    "circle" "circle"
    "other"))

(defn bad [s] (case s "circle" "circle" "circle" "again" "other")) ; BREAK!

(defn -main [& _]
  (println (describe "square")))
