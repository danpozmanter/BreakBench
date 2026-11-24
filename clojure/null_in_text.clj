(ns main)

(defn find-name [id]
  (when (= id 1) "alice"))

(defn -main [& args]
  (let [name (find-name (parse-long (first args)))]
    (println (str "hello, " name)))) ; CONTROL! (println (str "hello, " (or name "nobody")))))
