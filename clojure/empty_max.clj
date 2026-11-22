(ns main)

(defn -main [& args]
  (let [xs (map parse-long args)]
    (println (inc (apply max xs)))))
