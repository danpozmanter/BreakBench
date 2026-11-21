(ns main)

(defn save [path]
  (spit path "data"))

(defn -main [& _]
  (save "/nonexistent/dir/out.txt")
  (println "saved"))
