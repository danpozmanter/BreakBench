(ns main
  (:require [clojure.string :as str]))

(defn -main [& _]
  (let [name "ada"]
    (str/upper-case name) ; BREAK!
    (println name))) ; CONTROL! (println (str/upper-case name))))
