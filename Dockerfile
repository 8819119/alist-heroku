FROM xiaoyaliu/alist:latest
#xhofe/alist:main

LABEL MAINTAINER="i@nn.ci"
WORKDIR /opt/alist/

EXPOSE 5244

ENTRYPOINT [ "./alist", "-docker" ]
