;; LEVEL: STD

(ns main)

(defn -main [& _]
  (println (if (= (java.text.Normalizer/normalize "e\u0301" java.text.Normalizer$Form/NFC) "\u00e9")
             "equal"
             "different")))
