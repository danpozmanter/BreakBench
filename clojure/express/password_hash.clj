;; LEVEL: STD

(ns main
  (:import (java.security MessageDigest SecureRandom)
           (javax.crypto SecretKeyFactory)
           (javax.crypto.spec PBEKeySpec)))

(defn derive [password salt]
  (.getEncoded (.generateSecret (SecretKeyFactory/getInstance "PBKDF2WithHmacSHA256")
                                (PBEKeySpec. (.toCharArray ^String password) salt 600000 256))))

(defn -main [& _]
  (let [salt (byte-array 16)
        _ (.nextBytes (SecureRandom.) salt)
        stored (derive "hunter2" salt)]
    (println (MessageDigest/isEqual stored (derive "hunter2" salt))
             (MessageDigest/isEqual stored (derive "wrong" salt)))))
