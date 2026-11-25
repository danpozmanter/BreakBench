(ns main
  (:require [clojure.java.io :as io]))

(def scratch "/tmp/bb_scratch/export.csv")

(defn export-rows [rows]
  (spit scratch "qty\n")
  (doseq [row rows]
    (let [qty (Long/parseLong row)] ; BREAK!
    ; CONTROL! (let [qty (try (Long/parseLong row) (catch NumberFormatException e (io/delete-file scratch) (throw e)))]
      (spit scratch (str qty "\n") :append true)))
  (io/delete-file scratch))

(defn -main [& _]
  (try
    (export-rows ["3" "x" "5"])
    (catch NumberFormatException _
      (println "export failed"))))
