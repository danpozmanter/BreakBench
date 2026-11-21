;; LEVEL: LANGUAGE

(ns main
  (:require [clojure.string :as str]))

(defn -main [& _]
  (println (str/join " " (sorted-set 3 1 2))))
