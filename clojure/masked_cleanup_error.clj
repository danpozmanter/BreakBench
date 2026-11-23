(ns main)

(deftype Report []
  java.io.Closeable
  (close [_] (throw (java.io.IOException. "close failed"))))

(defn write-report [_report _text]
  (throw (java.io.IOException. "disk full")))

(defn save []
  (with-open [report (Report.)]
    (write-report report "totals")))

(defn -main [& _]
  (try
    (save)
    (catch java.io.IOException e
      (println (.getMessage e)))))
