;; LEVEL: STD

(ns main
  (:require [clojure.string :as str]))

(defn -main [& _]
  (println (str/join " " (sort #(Double/compare %1 %2) [3.0 ##NaN 1.0 2.0]))))
