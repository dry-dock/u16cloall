#!/bin/bash -e

CLOJURE_VER=1.9.0.309
echo "================= Installing Clojure-$CLOJURE_VER ==================="
curl -O https://download.clojure.org/install/linux-install-"$CLOJURE_VER".sh
chmod +x linux-install-"$CLOJURE_VER".sh
sudo ./linux-install-"$CLOJURE_VER".sh

clj -h 
