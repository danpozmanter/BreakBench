;; LEVEL: STD

(ns main)

(defn -main [& _]
  (let [buf (java.io.ByteArrayOutputStream.)]
    (dotimes [i 100000] (.write buf (int (mod i 256))))
    (println (.size buf))))
