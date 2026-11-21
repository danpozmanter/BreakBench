;; LEVEL: STD

(ns main)

(defn -main [& _]
  (println (if-some [v (System/getenv "BB_UNSET")] (str "present: " v) "absent")))
