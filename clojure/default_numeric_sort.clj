(ns main
  (:require [clojure.string :as str]))

(defn -main [& _]
  (println (str/join " " (sort [10 9 1]))))
