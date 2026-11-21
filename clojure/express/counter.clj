;; LEVEL: LANGUAGE

(ns main
  (:require [clojure.string :as str]))

(defn -main [& _]
  (println (str/join " " (for [[k v] (sort (frequencies ["a" "b" "a"]))] (str k "=" v)))))
