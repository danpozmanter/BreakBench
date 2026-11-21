(ns main
  (:require [clojure.string :as str]))

(defn -main [& _]
  (let [fs (for [i (range 3)] (fn [] i))]
    (println (str/join "," (map #(%) fs)))))
