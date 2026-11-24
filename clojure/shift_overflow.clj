(ns main)

(defn -main [& args]
  (println (bit-shift-left 1 (parse-long (first args))))) ; CONTROL! (println (str (.shiftLeft BigInteger/ONE (int (parse-long (first args)))))))
