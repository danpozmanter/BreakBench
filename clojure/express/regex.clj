;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (let [test #(some? (re-matches #"^[a-z]+[0-9]{2}$" %))]
    (println (test "abc12") (test "abc1"))))
