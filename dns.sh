# Setup dns & github.ove.local
echo "10.141.165.137 github.ove.local\n10.229.96.170 gems.ove.local" | \
  sudo tee -a /etc/hosts
echo "domain man.co\nnameserver 10.104.40.199\nnameserver 10.141.54.199" | \
  sudo tee -a /etc/resolvconf/resolv.conf.d/head
sudo resolvconf --enable-updates
sudo resolvconf -u

echo "Did it work?"
host spiderman
host github.ove.local
host gems.ove.local
