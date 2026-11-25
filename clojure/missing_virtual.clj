(ns main)

(derive ::square ::shape)

(defmulti area :kind)
(defmethod area ::shape [_] 0)
(defmethod area ::square [_] 4)

(defn describe [s] (str "area " (area s)))

(defn -main [& _]
  (println (describe {:kind ::square})))
