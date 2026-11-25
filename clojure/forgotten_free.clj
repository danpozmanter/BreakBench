(ns main)

(defn -main [& args]
  (let [n (parse-long (first args))
        seen (loop [i 0 seen 0]
               (if (< i n)
                 (let [rec {:data (byte-array 4096 (byte 1))}]
                   (recur (inc i) (+ seen (aget ^bytes (:data rec) 0))))
                 seen))]
    (println (if (= seen n) "done" "lost"))))
