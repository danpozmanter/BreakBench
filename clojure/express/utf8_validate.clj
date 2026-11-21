;; LEVEL: STD

(ns main)

(defn -main [& _]
  (let [decoder (-> java.nio.charset.StandardCharsets/UTF_8
                    .newDecoder
                    (.onMalformedInput java.nio.charset.CodingErrorAction/REPORT))]
    (println (try
               (.decode decoder (java.nio.ByteBuffer/wrap (byte-array [0x61 -1])))
               "valid"
               (catch java.nio.charset.CharacterCodingException _ "invalid")))))
