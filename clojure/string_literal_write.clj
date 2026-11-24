(ns main)

(defn -main [& _]
  (let [greeting "hello"]
    (aset greeting 0 \j) ; BREAK!
    (println greeting))) ; CONTROL! (println (str "j" (subs greeting 1)))))
