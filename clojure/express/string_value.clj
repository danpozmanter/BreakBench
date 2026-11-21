;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (let [a "abc"
        b (str a "d")]
    (when (string? b)
      (println a))))
