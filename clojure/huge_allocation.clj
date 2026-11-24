(ns main)

(defn -main [& args]
  (let [n (parse-long (first args))
        buf (byte-array n)] ; CONTROL! buf (when (<= n (bit-shift-left 1 30)) (byte-array n))]
    (aset buf (dec n) (byte 1)) ; CONTROL! (if buf (do (aset buf (dec n) (byte 1)) (println (alength buf))) (println "too large"))))
    (println (alength buf)))) ; BREAK!
