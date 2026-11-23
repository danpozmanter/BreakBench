(ns main
  (:require [clojure.java.io :as io]))

(defn -main [& _]
  (let [^java.io.Writer report (io/writer "/tmp/bb_report.txt")]
    (.write report "total=42\n")))
