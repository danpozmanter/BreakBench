;; LEVEL: STD

(ns main
  (:require [clojure.java.shell :as sh]))

(defn -main [& _]
  (println (:exit (sh/sh "false")))
  (shutdown-agents))
