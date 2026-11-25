(ns main
  (:require [clojure.string :as str]))

(defn parse-order [line]
  (let [parts (str/split line #",")]
    (Long/parseLong (nth parts 2)))) ; BREAK!
    ; CONTROL! (Long/parseLong (nth parts 1))))

(defn -main [& _]
  (try
    (println (parse-order "widget,5"))
    (catch Exception _
      (println "invalid order"))))
