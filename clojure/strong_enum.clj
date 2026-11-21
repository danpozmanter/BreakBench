(ns main)

(defn color-name [c]
  (case c
    :red "red"
    :green "green"
    :blue "blue"))

(defn -main [& _]
  (println (color-name 7)))
