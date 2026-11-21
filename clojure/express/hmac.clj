;; LEVEL: STD

(ns main
  (:import (java.util HexFormat)
           (javax.crypto Mac)
           (javax.crypto.spec SecretKeySpec)))

(defn -main [& _]
  (let [mac (Mac/getInstance "HmacSHA256")]
    (.init mac (SecretKeySpec. (.getBytes "key") "HmacSHA256"))
    (println (.formatHex (HexFormat/of) (.doFinal mac (.getBytes "The quick brown fox jumps over the lazy dog"))))))
