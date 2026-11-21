;; LEVEL: LANGUAGE

(ns main)

(defn deep [n] (if (zero? n) 0 (inc (deep (dec n)))))

(defn -main [& _]
  (println (try (deep 1000000000) (catch StackOverflowError _ "stack overflow"))))
