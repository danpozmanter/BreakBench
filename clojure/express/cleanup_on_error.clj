;; LEVEL: LANGUAGE

(ns main)

(defn use-resource [fail]
  (try
    (when fail (throw (ex-info "boom" {})))
    (finally (println "released"))))

(defn -main [& _]
  (use-resource false)
  (try (use-resource true) (catch clojure.lang.ExceptionInfo _)))
