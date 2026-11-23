(ns main
  (:require [clojure.edn :as edn]))

(defrecord Session [user])

(defn -main [& _]
  ;; clojure.core/read-string's documentation sends untrusted data to clojure.edn, which reads data only.
  (let [attacker "#=(clojure.core/println \"cleanup ran\")"]
    (try
      (let [session (edn/read-string attacker)]
        (if (instance? Session session)
          (println (:user session))
          (println "rejected")))
      (catch Exception _ (println "rejected")))))
