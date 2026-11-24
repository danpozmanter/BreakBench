(ns main)

(deftype Report []
  java.io.Closeable
  (close [_] (throw (java.io.IOException. "close failed"))))

(defn write-report [_report _text]
  (throw (java.io.IOException. "disk full")))

(defn save []
  (with-open [report (Report.)] ; CONTROL! (let [report (Report.)]
    (write-report report "totals"))) ; CONTROL! (try (write-report report "totals") (catch java.io.IOException e (try (.close report) (catch java.io.IOException _ nil)) (throw e))) (.close report)))

(defn -main [& _]
  (try
    (save)
    (catch java.io.IOException e
      (println (.getMessage e)))))
