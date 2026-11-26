(ns main)

(defn cached-count [name]
  (when (= name "ada") 4))

(defn -main [& args]
  (let [cached (cached-count (first args))]
    (println (+ (or cached 0) 1))))
