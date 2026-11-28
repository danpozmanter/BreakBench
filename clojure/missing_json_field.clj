(ns main
  (:require [clojure.data.json :as json]))

(defn -main [& _]
  (let [user (json/read-str "{\"name\": \"Ada\"}")] ; CONTROL! (let [user (json/read-str "{\"name\": \"Ada\", \"age\": 36}")]
    (println (inc (get user "age")))))
