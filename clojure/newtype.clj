(ns main)

(defrecord Meters [v])
(defrecord Seconds [v])

(defn add-meters [a b] (->Meters (+ (:v a) (:v b))))

(defn -main [& _]
  (println (:v (add-meters (->Meters 2.0) (->Seconds 3.0)))))
