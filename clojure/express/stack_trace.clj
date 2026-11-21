;; LEVEL: STD

(ns main
  (:require [clojure.string :as str]))

(defn inner [] (.getStackTrace (Thread/currentThread)))

(defn -main [& _]
  (let [named (some #(str/includes? (.getClassName ^StackTraceElement %) "$inner") (inner))]
    (println (if named "inner" "missing"))))
