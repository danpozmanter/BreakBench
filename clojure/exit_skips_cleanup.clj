(ns main
  (:require [clojure.java.io :as io]))

(def lock "/tmp/bb_scratch/run.lock")

(defn check-args [args]
  (when (some #{"--version"} args)
    (println "1.0")
    (flush)
    (System/exit 0) ; BREAK!
    ; CONTROL! true
    ))

(defn -main [& args]
  (spit lock "")
  (try
    (when-not (check-args args)
      (println "working"))
    (finally
      (io/delete-file lock))))
