;; LEVEL: STD

(ns main)

(defn -main [& args]
  (let [n (parse-long (first args))]
    (try
      (let [parts (vec (repeatedly (inc (quot n Integer/MAX_VALUE)) #(byte-array (- Integer/MAX_VALUE 8))))]
        (println "allocated" (count parts)))
      (catch OutOfMemoryError _ (println "allocation failed")))))
