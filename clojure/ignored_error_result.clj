(ns main)

(defn save [path]
  (spit path "data"))

(defn -main [& _]
  (save "/dev/null/out.txt") ; CONTROL! (try (save "/dev/null/out.txt") (println "saved") (catch java.io.IOException _ (println "failed"))))
  (println "saved")) ; BREAK!
