#!/bin/bash -e

CLOJURE_VER=1.10.0.411
echo "================= Installing Clojure-$CLOJURE_VER ==================="
curl -O https://download.clojure.org/install/linux-install-"$CLOJURE_VER".sh
chmod +x linux-install-"$CLOJURE_VER".sh
sudo ./linux-install-"$CLOJURE_VER".sh

clj -h 
