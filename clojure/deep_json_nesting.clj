(ns main
  (:require [clojure.data.json :as json]))

(defn -main [& args]
  (let [depth (parse-long (first args))]
    (json/read-str (str (apply str (repeat depth "[")) (apply str (repeat depth "]")))) ; CONTROL! (when (> depth 1000) (println "refused") (System/exit 0))
    (println "parsed")))
