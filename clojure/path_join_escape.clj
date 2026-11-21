(ns main
  (:require [clojure.java.io :as io]
            [clojure.string :as str]))

(defn -main [& args]
  (let [joined (str (io/file "/srv/app/uploads" (first args)))]
    (println (if (str/starts-with? joined "/srv/app/uploads/") "inside" "escaped"))))
