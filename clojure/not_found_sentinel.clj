(ns main)

(require '[clojure.string :as str])

(defn -main [& args]
  (let [line (first args)
        pos (str/index-of line ":")]
    (println (subs line (inc pos))))) ; CONTROL! (println (if pos (subs line (inc pos)) "no colon"))))
