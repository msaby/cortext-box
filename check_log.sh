if [ -e /vagrant/ ]
then
  dir=/vagrant
else
  dir=.
fi
tail -f `ls -rt $dir/log/*/*.log` | php $dir/decode_log.php $1
