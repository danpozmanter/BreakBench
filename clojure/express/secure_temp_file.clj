;; LEVEL: STD

(ns main
  (:import (java.nio.file Files)
           (java.nio.file.attribute FileAttribute)))

(defn -main [& _]
  (let [path (Files/createTempFile "bb" ".txt" (into-array FileAttribute []))]
    (spit (str path) "ok")
    (println (slurp (str path)))
    (Files/delete path)))
