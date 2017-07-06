echo "letsencrypt daily.sh start at `date "+%Y-%m-%d %H:%M:%S"`"

cd `dirname $0`
./mstdn.bizocean.co.jp.sh
./o.bizocean.jp.sh
./s.bizocean.jp.sh

echo "end at `date "+%Y-%m-%d %H:%M:%S"`"
echo "----------------------------------"
