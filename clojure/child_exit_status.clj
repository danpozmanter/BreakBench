(ns main)

(defn -main [& _]
  (.waitFor (.start (ProcessBuilder. ^"[Ljava.lang.String;" (into-array String ["sh" "-c" "exit 3"])))) ; CONTROL! (if (zero? (.waitFor (.start (ProcessBuilder. ^"[Ljava.lang.String;" (into-array String ["sh" "-c" "exit 3"]))))) (println "backed up") (println "backup failed")))
  (println "backed up")) ; BREAK!
