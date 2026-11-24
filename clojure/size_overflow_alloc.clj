(ns main)

(defn -main [& args]
  (let [n (Long/parseLong (first args))
        size (* n 8) ; CONTROL! size (if (> n (bit-shift-left 1 27)) nil (* n 8))
        records (byte-array size)] ; CONTROL! records (when size (byte-array size))]
    (aset-byte records 8 99) ; CONTROL! (if records (do (aset-byte records 8 99) (println "stored")) (println "too large"))))
    (println "stored"))) ; BREAK!
