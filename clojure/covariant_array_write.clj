(ns main)

(defn sound [animal]
  (case (:kind animal) :dog "woof" :cat "meow"))

(defn -main [& _]
  (let [dogs [{:kind :dog}]
        animals dogs
        animals (assoc animals 0 {:kind :cat})]
    (binding [*out* *err*] (println (sound (first animals))))
    (println (sound (first dogs)))))
