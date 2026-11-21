;; LEVEL: STD

(ns main
  (:require [clojure.string :as str]))

(defn -main [& _]
  (let [m (java.util.LinkedHashMap.)]
    (doseq [k ["c" "a" "b"]] (.put m k 0))
    (println (str/join " " (keys m)))))
