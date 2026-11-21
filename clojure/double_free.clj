(ns main)

(defn -main [& _]
  (let [a (atom {:value 0})]
    (reset! a nil)
    (reset! a nil)
    (let [x {:value 1}
          y {:value 2}]
      (binding [*out* *err*] (println (:value y)))
      (println (:value x)))))
