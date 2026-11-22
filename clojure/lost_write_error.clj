(ns main)

(defn -main [& _]
  (spit "/dev/full" "data\n")
  (println "saved"))
