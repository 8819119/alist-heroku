FROM xiaoyaliu/alist:latest
#xhofe/alist:main
MAINTAINER cooluc <admin@cooluc.com>

RUN chmod -R 777 /alist/data
ADD alist.sh /alist.sh
RUN chmod +x /alist.sh

CMD /alist.sh
