(ns main)

(defn -main [& _]
  (let [s ""]
    (println (if (bit-and (pos? (count s)) (= (nth s 0) \a)) "yes" "no"))))
