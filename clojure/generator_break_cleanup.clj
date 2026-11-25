(ns main
  (:require [clojure.java.io :as io]))

(def lock "/tmp/bb_scratch/reader.lock")

(defn rows []
  (spit lock "")
  (concat ["alpha" "beta" "gamma"]
          (lazy-seq (io/delete-file lock) nil)))

(defn -main [& _]
  (println (first (rows))) ; BREAK!
  ; CONTROL! (println (first (doall (rows))))
  )
