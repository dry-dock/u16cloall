#!/bin/bash -e

yum clean
mv /var/lib/apt/lists/* /tmp
mkdir -p /var/lib/apt/lists/partial
yum clean
yum update
dpkg --purge --force-depends ca-certificates-java
yum install ca-certificates-java

# install Clojure's build tool: leiningen
echo "================= Install clojure's build tool: leiningen ==================="
wget -nv https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
mv lein /usr/local/bin/lein
chmod a+x /usr/local/bin/lein

sudo yum install rlwrap

for file in /c7cloall/version/*;
do
  $file
done
