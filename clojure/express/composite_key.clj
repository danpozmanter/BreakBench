;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (println (contains? #{[1 2]} [1 2])))
