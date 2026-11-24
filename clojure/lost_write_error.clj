(ns main)

(defn -main [& _]
  (spit "/dev/full" "data\n") ; CONTROL! (try (spit "/dev/full" "data\n") (println "saved") (catch java.io.IOException _ (println "failed"))))
  (println "saved")) ; BREAK!
