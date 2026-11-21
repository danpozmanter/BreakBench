;; LEVEL: STD

(ns main)

(defn -main [& _]
  (let [utc (java.time.ZonedDateTime/of 2026 3 29 1 30 0 0 java.time.ZoneOffset/UTC)
        paris (.withZoneSameInstant utc (java.time.ZoneId/of "Europe/Paris"))]
    (println (.format paris (java.time.format.DateTimeFormatter/ofPattern "yyyy-MM-dd HH:mm")))))
