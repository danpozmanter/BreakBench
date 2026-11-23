(ns main
  (:require [clojure.java.io :as io]
            [clojure.string :as str]))

(defn -main [& _]
  (.mkdirs (io/file "/tmp/bb_files"))
  (spit "/tmp/bb_files/report.txt" "secret\n")
  (let [name "report.txt\u0000.png"]
    (if-not (str/ends-with? name ".png")
      (println "rejected")
      (try
        (print (slurp (str "/tmp/bb_files/" name)))
        (flush)
        (catch Exception _ (println "rejected"))))))
