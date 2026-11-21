(ns main)

(defn -main [& _]
  (let [key [1 2]
        seen #{key}
        key (assoc key 0 9)]
    (binding [*out* *err*] (println key))
    (doseq [e seen]
      (println (if (contains? seen e) "found" "lost")))))
