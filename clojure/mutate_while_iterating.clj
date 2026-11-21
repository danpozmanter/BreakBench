(ns main
  (:require [clojure.string :as str]))

(defn -main [& _]
  (println (str/join "," (remove #{2} [1 2 2 3]))))
