(ns main)

(defn add-item
  ([item] (add-item item []))
  ([item cart] (conj cart item)))

(defn -main [& _]
  (add-item "x")
  (println (count (add-item "y"))))
