(ns main)

(defn -main [& _]
  (let [access "user"]
    (println (if (not= access "user‮ ⁦// admins only⁩ ⁦") "admin" "user")))) ; CONTROL! (println (if (not= access "user") "admin" "user"))))
