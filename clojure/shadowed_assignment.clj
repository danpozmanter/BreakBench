(ns main)

(defn -main [& args]
  (let [status (atom "pending")]
    (when (= (first args) "ok")
      (let [status "done"] ; CONTROL! (let [_ (reset! status "done")]
        (binding [*out* *err*] (println "status:" status)))) ; CONTROL! (binding [*out* *err*] (println "status:" @status))))
    (println @status)))
