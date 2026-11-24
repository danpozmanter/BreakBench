(ns main)

(defn -main [& _]
  (let [s ""]
    (println (if (bit-and (pos? (count s)) (= (nth s 0) \a)) "yes" "no")))) ; CONTROL! (println (if (and (pos? (count s)) (= (nth s 0) \a)) "yes" "no"))))
