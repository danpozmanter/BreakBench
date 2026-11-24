(ns main)

(defn find-user [id]
  (when (= id 1) {:name "alice"}))

(defn -main [& args]
  (let [u (find-user (parse-long (first args)))]
    (println (count (:name u))))) ; CONTROL! (println (if u (count (:name u)) "missing"))))
