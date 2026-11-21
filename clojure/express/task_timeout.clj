;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (let [task (future (Thread/sleep 5000) :done)]
    (println (if (= ::timeout (deref task 100 ::timeout)) "timed out" "done"))
    (System/exit 0)))
