(ns main
  (:require [clojure.java.io :as io]))

(defn -main [& args]
  (let [n (parse-long (first args))]
    (spit "/tmp/bb_fd.txt" "x")
    (dotimes [_ n]
      (let [in (io/input-stream "/tmp/bb_fd.txt")]
        (.read in)))
    (println "done")))
