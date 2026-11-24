(ns main)

(defn -main [& args]
  (let [xs (map parse-long args)]
    (println (inc (apply max xs))))) ; CONTROL! (println (if (seq xs) (inc (apply max xs)) "no readings"))))
