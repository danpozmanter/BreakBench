;; LEVEL: STD

(ns main)

(defn -main [& _]
  (let [d (java.util.ArrayDeque.)]
    (.addLast d 1)
    (.addFirst d 0)
    (.addLast d 2)
    (println (.pollFirst d) (.pollLast d))))
