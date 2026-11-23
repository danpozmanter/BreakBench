(ns main)

(defn -main [& args]
  (let [n (Long/parseLong (first args))
        size (* n 8)
        records (byte-array size)]
    (aset-byte records 8 99)
    (println "stored")))
