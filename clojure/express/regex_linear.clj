;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (println (if (re-matches #"^(a+)+$" (str (apply str (repeat 34 \a)) "!")) "match" "no match")))
