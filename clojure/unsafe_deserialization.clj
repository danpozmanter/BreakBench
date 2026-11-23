(ns main)

(defrecord Session [user])

(defn -main [& _]
  ;; The attacker's text names code for the reader to run, as a saved value names its type.
  (let [attacker "#=(clojure.core/println \"cleanup ran\")"]
    (try
      (let [session (read-string attacker)]
        (if (instance? Session session)
          (println (:user session))
          (println "rejected")))
      (catch Exception _ (println "rejected")))))
