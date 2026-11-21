;; LEVEL: STD

(ns main
  (:import (java.util.concurrent TimeUnit)))

(defn -main [& _]
  (let [p (.start (ProcessBuilder. ["sleep" "10"]))]
    (if (.waitFor p 100 TimeUnit/MILLISECONDS)
      (println "finished")
      (do (.destroyForcibly p)
          (.waitFor p)
          (println "killed")))))
