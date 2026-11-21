;; LEVEL: STD

(ns main)

(defn -main [& _]
  (let [bits (java.util.BitSet.)]
    (.set bits 1000)
    (println (.get bits 1000) (.get bits 999))))
