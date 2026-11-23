(ns main
  (:import (java.io FileInputStream)))

(defn -main [& args]
  (let [n (Long/parseLong (first args))
        total (atom 0)]
    (with-open [source (FileInputStream. "/dev/zero")]
      (dotimes [_ n]
        (let [message (.readNBytes source 4096)]
          (swap! total + (alength message)))))
    (println @total)))
