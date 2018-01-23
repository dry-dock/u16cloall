#!/bin/bash -e

apt-get clean
mv /var/lib/apt/lists/* /tmp
mkdir -p /var/lib/apt/lists/partial
apt-get clean
apt-get update

# install Clojure's build tool: leiningen
echo "================= Install clojure's build tool: leiningen ==================="
wget -nv https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
mv lein /usr/local/bin/lein
chmod a+x /usr/local/bin/lein

sudo apt-get install rlwrap

for file in /u16cloall/version/*;
do
  $file
done
