{:user {:plugins [[cider/cider-nrepl "0.16.0"]
                  [venantius/ultra "0.5.2"]
                  [lein-midje "3.2.1"]
                  [lein-kibit "0.1.6"]
                  [jonase/eastwood "0.2.9"]]
        :dependencies [[org.clojure/tools.nrepl "0.2.13"]
                       [jonase/kibit "0.1.6" :exclusions [org.clojure/clojure]]
                       [jonase/eastwood "0.2.9" :exclusions [org.clojure/clojure]]]}}
