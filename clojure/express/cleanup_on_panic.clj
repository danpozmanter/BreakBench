;; LEVEL: LANGUAGE

(ns main)

(defn work []
  (try
    (throw (RuntimeException. "panic"))
    (finally (println "cleanup"))))

(defn -main [& _]
  (try (work) (catch RuntimeException _ (println "recovered"))))
