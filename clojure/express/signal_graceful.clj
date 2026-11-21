;; LEVEL: STD

(ns main)

(defn -main [& _]
  (.addShutdownHook (Runtime/getRuntime)
                    (Thread. (fn []
                               (println "cleaned up")
                               (flush)
                               (.halt (Runtime/getRuntime) 0))))
  (.waitFor (.start (ProcessBuilder. ["kill" "-TERM" (str (.pid (java.lang.ProcessHandle/current)))])))
  (Thread/sleep 5000))
