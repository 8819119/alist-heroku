# 创建配置文件目录
#mkdir -p /alist/config/temp
mkdir -p /opt/alist/data/temp

cat >/opt/alist/data/config.json <<EOF
{
  "address": "0.0.0.0",
  "port": $PORT,
  "assets": "/",
  "database": {
    "type": "$ADATABASE",
    "user": "$BSQLUSER",
    "password": "$CSQLPASSWORD",
    "host": "$DSQLHOST",
    "port": $ESQLPORT,
    "name": "$FSQLNAME",
    "table_prefix": "x_",
    "db_file": "/opt/alist/data/data.db"
  },
  "scheme": {
    "https": false,
    "cert_file": "",
    "key_file": ""
  },
  "cache": {
    "expiration": $GEXPIRATION,
    "cleanup_interval": $HCLEANUP_INTERVAL
  },
  "temp_dir": "/opt/alist/data/temp"
}
EOF

cd /opt/alist
/alist server --no-prefix
#./alist -conf data/config.json
