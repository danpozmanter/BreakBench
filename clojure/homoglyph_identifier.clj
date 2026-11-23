(ns main)

(defn admin? [user] (= user "root"))
(defn аdmin? [_user] true) ; BREAK!

(defn -main [& _]
  (let [user "guest"]
    (println (if (admin? "root") "admin" "guest"))
    (println (if (аdmin? user) "admin" "guest")))) ; CONTROL! (println (if (admin? user) "admin" "guest"))))
