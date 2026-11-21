;; LEVEL: STD

(ns main)

(defn -main [& _]
  (let [weak (java.lang.ref.WeakReference. (Object.))]
    (System/gc)
    (println (if (nil? (.get weak)) "gone" "alive"))))
