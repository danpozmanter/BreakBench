(ns main
  (:require [clojure.string :as str]))

(defn -main [& _]
  (let [name "ada"]
    (str/upper-case name)
    (println name)))
