;; LEVEL: STD

(ns main)

(defn -main [& _]
  (let [bytes (byte-array 16)]
    (.nextBytes (java.security.SecureRandom.) bytes)
    (println (apply str (map #(format "%02x" %) bytes)))))
