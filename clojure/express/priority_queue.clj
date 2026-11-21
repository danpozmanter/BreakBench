;; LEVEL: STD

(ns main
  (:require [clojure.string :as str]))

(defn -main [& _]
  (let [q (java.util.PriorityQueue. [3 1 2])]
    (println (str/join " " (repeatedly 3 #(.poll q))))))
