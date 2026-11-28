(ns main)

(defn -main [& args]
  (let [claimed (parse-long (first args))
        buf (byte-array 64)
        _ (System/arraycopy (.getBytes "SECRET-KEY-0042") 0 buf 2 15)
        _ (System/arraycopy (.getBytes "hi") 0 buf 0 2)
        payload (take 2 buf)]
    (println (String. (byte-array (take claimed payload)))))) ; CONTROL! (println (if (> claimed (count payload)) "invalid" (String. (byte-array (take claimed payload)))))))
