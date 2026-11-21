;; LEVEL: LANGUAGE

(ns main)

(defn handle [f]
  (try (f) (catch IllegalStateException _ (println "caught A"))))

(defn -main [& _]
  (handle #(throw (IllegalStateException. "A")))
  (try
    (handle #(throw (UnsupportedOperationException. "B")))
    (catch UnsupportedOperationException _ (println "passed B"))))
