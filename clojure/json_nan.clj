(ns main
  (:require [clojure.data.json :as json]))

(defn -main [& args]
  (let [count (parse-long (first args))
        mean (/ 0.0 count)]
    (println (json/write-str {"mean" mean})))) ; CONTROL! (println (try (json/write-str {"mean" mean}) (catch Exception _ "refused")))))
