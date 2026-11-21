(ns main)

(defn -main [& args]
  (println (bit-shift-left 1 (parse-long (first args)))))
