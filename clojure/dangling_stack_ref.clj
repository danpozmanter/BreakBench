(ns main)

(defn make []
  (let [local (atom 4242)]
    local))

(defn clobber []
  (nth (vec (repeat 64 7)) 63))

(defn -main [& _]
  (let [r (make)]
    (clobber)
    (println @r)))
