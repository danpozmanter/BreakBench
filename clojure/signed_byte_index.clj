(ns main)

(defn -main [& args]
  (let [counts (int-array 256)]
    (doseq [b (.getBytes ^String (first args) "UTF-8")]
      (aset counts b (inc (aget counts b)))) ; CONTROL! (let [i (bit-and b 0xff)] (aset counts i (inc (aget counts i)))))
    (println (reduce + (drop 128 counts)))))
