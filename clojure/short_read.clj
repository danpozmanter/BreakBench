(ns main)

(defn -main [& _]
  (let [child (.start (ProcessBuilder. ^"[Ljava.lang.String;" (into-array String ["sh" "-c" "printf HELLO-WO; sleep 0.2; printf RLD-1234"])))
        message (byte-array 16)]
    (.read (.getInputStream child) message) ; CONTROL! (.readNBytes (.getInputStream child) message 0 16)
    (.waitFor child)
    (println (String. message "UTF-8"))))
