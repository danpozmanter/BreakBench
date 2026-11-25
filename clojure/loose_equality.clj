(ns main)

(defn -main [& args]
  (let [code (first args)]
    (println (if (= code 0) "same" "different")))) ; CONTROL! (println (if (= code "0") "same" "different"))))
