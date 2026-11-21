(ns main)

(deftype Point [x y label]
  Object
  (equals [_ o] (and (instance? Point o) (= x (.-x ^Point o)) (= y (.-y ^Point o)))))

(defn -main [& _]
  (println (count (hash-set (Point. 1 2 "a") (Point. 1 2 "b")))))
