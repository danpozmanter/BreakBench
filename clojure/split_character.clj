(ns main)

(defn -main [& args]
  (let [name "a👍b"
        n (parse-long (first args))]
    (println (subs name 0 n)))) ; CONTROL! (println (subs name 0 (.offsetByCodePoints name 0 (int n))))))
