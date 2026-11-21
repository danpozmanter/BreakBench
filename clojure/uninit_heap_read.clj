(ns main)

(defn -main [& _]
  (let [session (byte-array 64)]
    (System/arraycopy (.getBytes "SECRET-TOKEN") 0 session 32 12)
    (let [reply (byte-array 64)]
      (println (apply str (for [i (range 32 44)] (format "%02x" (aget reply i))))))))
