(ns main)

(defn validate [name]
  (let [problem (when (empty? name) (ex-info "invalid name" {:field "name"}))]
    problem))

(defn -main [& _]
  (println (if (validate "ada") "invalid" "valid")))
