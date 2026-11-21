;; LEVEL: STD

(ns main
  (:import (java.security SecureRandom)
           (javax.crypto AEADBadTagException Cipher KeyGenerator)
           (javax.crypto.spec GCMParameterSpec)))

(defn run [mode key iv data]
  (let [c (Cipher/getInstance "AES/GCM/NoPadding")]
    (.init c (int mode) key (GCMParameterSpec. 128 iv))
    (.doFinal c data)))

(defn -main [& _]
  (let [gen (doto (KeyGenerator/getInstance "AES") (.init 256))
        key (.generateKey gen)
        iv (byte-array 12)
        _ (.nextBytes (SecureRandom.) iv)
        sealed (run Cipher/ENCRYPT_MODE key iv (.getBytes "secret"))]
    (println (String. (run Cipher/DECRYPT_MODE key iv sealed)))
    (aset-byte sealed 0 (unchecked-byte (bit-xor (aget sealed 0) 1)))
    (println (try (run Cipher/DECRYPT_MODE key iv sealed) "accepted"
                  (catch AEADBadTagException _ "rejected")))))
