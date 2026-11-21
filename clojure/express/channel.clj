;; LEVEL: STD

(ns main
  (:require [clojure.string :as str]))

(defn -main [& _]
  (let [q (java.util.concurrent.LinkedBlockingQueue.)]
    (future (doseq [v [1 2 3]] (.put q v)))
    (println (str/join " " (repeatedly 3 #(.take q))))
    (shutdown-agents)))
