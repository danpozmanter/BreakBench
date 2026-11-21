(ns main)

(defn write-report [] (throw (java.io.IOException. "disk full")))
(defn close-log [] :closed)

(defn save-report []
  (try
    (write-report)
    (finally
      (close-log))))

(defn -main [& _]
  (try
    (save-report)
    (println "saved")
    (catch java.io.IOException _
      (println "failed"))))
