(ns main)

(defn color-name [c]
  (case c
    :red "red"
    :green "green"))

(defn -main [& args]
  (println (color-name ([:red :green :blue] (parse-long (first args))))))
