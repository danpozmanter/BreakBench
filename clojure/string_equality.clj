(ns main)

(defn -main [& args]
  (let [s (str "ab" (first args))]
    (println (if (= s "abc") "equal" "different"))))
