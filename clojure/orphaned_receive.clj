(ns main)

(defn -main [& _]
  (let [answer (promise)]
    (future (deliver answer (Long/parseLong "x"))) ; CONTROL! (future (deliver answer (try (Long/parseLong "x") (catch NumberFormatException _ :failed))))
    (println @answer) ; CONTROL! (println (if (= @answer :failed) "failed" @answer))
    (shutdown-agents)))
