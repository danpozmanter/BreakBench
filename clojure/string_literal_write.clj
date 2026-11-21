(ns main)

(defn -main [& _]
  (let [greeting "hello"]
    (aset greeting 0 \j)
    (println greeting)))
