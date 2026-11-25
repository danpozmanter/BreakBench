(ns main)

(defn -main [& args]
  (let [ready (= (first args) "yes")
        approved (= (second args) "yes")
        ok (and ready approved)]
    (println (if ok "go" "wait"))))
