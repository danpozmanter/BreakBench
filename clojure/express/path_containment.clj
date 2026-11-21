;; LEVEL: STD

(ns main)

(defn -main [& _]
  (let [base (java.nio.file.Path/of "/srv/app" (into-array String []))
        joined (.normalize (.resolve base "../../etc/passwd"))]
    (println (if (.startsWith joined base) "inside" "outside"))))
