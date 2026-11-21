(ns main
  (:require [clojure.java.io :as io]
            [clojure.java.shell :as sh]))

(defn -main [& args]
  (io/delete-file "/tmp/bb_pwned" true)
  (sh/sh "echo" (first args))
  (println (if (.exists (io/file "/tmp/bb_pwned")) "injected" "safe"))
  (shutdown-agents))
