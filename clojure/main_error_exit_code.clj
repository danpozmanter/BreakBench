(ns main)

(defn -main [& _]
  (let [text (try
               (slurp "/nonexistent/bb.conf")
               (catch java.io.IOException e
                 (binding [*out* *err*]
                   (println "config missing:" (.getMessage e)))
                 nil))]
    (when text ; BREAK!
    ; CONTROL! (if-not text (System/exit 1)
      (println (count text)))))
