(ns main)

(defn -main [& args]
  (let [ids [10 20 30]
        id (first args)] ; CONTROL! id (parse-long (first args))]
    (println (if (some #{id} ids) "found" "missing"))))
