;; LEVEL: STD

(ns main)

(defn -main [& _]
  (let [digest (.digest (java.security.MessageDigest/getInstance "SHA-256") (.getBytes "abc" "UTF-8"))]
    (println (apply str (map #(format "%02x" %) digest)))))
