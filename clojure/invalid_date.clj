(ns main)

(defn -main [& args]
  (let [[y m d] (map parse-long args)]
    (println (str (java.time.LocalDate/of (int y) (int m) (int d)))))) ; CONTROL! (println (try (str (java.time.LocalDate/of (int y) (int m) (int d))) (catch java.time.DateTimeException _ "invalid")))))
