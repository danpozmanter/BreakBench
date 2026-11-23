(ns main
  (:require [clojure.data.json :as json]))

(defn -main [& _]
  (let [event (json/read-str "{\"id\": 9007199254740993}")]
    (println (get event "id"))))
