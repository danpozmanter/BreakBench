;; LEVEL: LANGUAGE

(ns main)

(defn load-config []
  (try
    (throw (ex-info "not found" {}))
    (catch clojure.lang.ExceptionInfo e
      (throw (ex-info (str "loading config: " (ex-message e)) {} e)))))

(defn -main [& _]
  (try
    (load-config)
    (catch clojure.lang.ExceptionInfo e
      (println (ex-message e))
      (println (ex-message (ex-cause e))))))
