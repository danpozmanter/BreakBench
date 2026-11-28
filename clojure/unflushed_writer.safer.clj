(ns main)

(defn -main [& _]
  (spit "/tmp/bb_report.txt" "total=42\n"))
