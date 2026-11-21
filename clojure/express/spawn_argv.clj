;; LEVEL: STD

(ns main
  (:require [clojure.java.shell :as sh]))

(defn -main [& _]
  (print (:out (sh/sh "echo" "hi; touch /tmp/bb_x")))
  (flush)
  (shutdown-agents))
