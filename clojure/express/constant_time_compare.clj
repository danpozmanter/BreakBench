;; LEVEL: STD

(ns main)

(defn -main [& _]
  (let [a (byte-array 16 (byte 7))
        b (byte-array 16 (byte 7))]
    (println (if (java.security.MessageDigest/isEqual a b) "equal" "different"))))
