echo "include /etc/nginx/conf.d/tcp/*.conf;" >> /etc/nginx/nginx.conf
mkdir -p /etc/nginx/conf.d/tcp/
cp /app/nginx-tcp.conf /etc/nginx/conf.d/tcp/default.conf
forego start -r
