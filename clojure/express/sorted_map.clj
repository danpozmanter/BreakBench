;; LEVEL: LANGUAGE

(ns main
  (:require [clojure.string :as str]))

(defn -main [& _]
  (println (str/join " " (keys (sorted-map "c" 0 "a" 0 "b" 0)))))
