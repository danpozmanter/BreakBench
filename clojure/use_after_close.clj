(ns main
  (:require [clojure.java.io :as io]))

(defn -main [& _]
  (let [w (io/writer "/tmp/bb_close.txt")]
    (.write w "a")
    (.close w)
    (.write w "b")
    (println "ok")))
