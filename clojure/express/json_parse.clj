;; LEVEL: PROJECT

(ns main
  (:require [clojure.data.json :as json]))

(defn -main [& _]
  (let [good (json/read-str "{\"port\": 8080, \"debug\": true}")
        result (try (json/read-str "{port: 8080}") "valid"
                    (catch Exception _ "invalid"))]
    (println (get good "port") result)))
