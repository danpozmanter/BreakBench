;; LEVEL: STD

(ns main)

(defn -main [& _]
  (Thread/setDefaultUncaughtExceptionHandler
   (reify Thread$UncaughtExceptionHandler
     (uncaughtException [_ _ _] (println "hook ran"))))
  (throw (IllegalStateException. "boom")))
