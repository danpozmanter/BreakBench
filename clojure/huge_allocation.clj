(ns main)

(defn -main [& args]
  (let [n (parse-long (first args))
        buf (byte-array n)]
    (aset buf (dec n) (byte 1))
    (println (alength buf))))
