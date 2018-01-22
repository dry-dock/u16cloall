#!/bin/bash -e

CLOJURE_VER=1.9.0.309
echo "================= Installing Clojure-$CLOJURE_VER ==================="
curl -O https://download.clojure.org/install/linux-install-"$CLOJURE_VER".sh
chmod +x linux-install-"$CLOJURE_VER".sh
sudo ./linux-install-"$CLOJURE_VER".sh

cat >/usr/local/bin/clj <<EOF
#!/bin/bash
if [[ $# -eq 0 ]]; then
  java -server -cp $HOME/lib/clojure-"$CLOJURE_VER".jar clojure.main
else
  java -server -cp $HOME/lib/clojure-"$CLOJURE_VER".jar clojure.main $1 -- "$@"
fi
EOF
sudo chmod a+x /usr/local/bin/clj

