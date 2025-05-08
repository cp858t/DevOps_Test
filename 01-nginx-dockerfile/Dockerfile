FROM iron/debian12-base:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    nginx=1.19.0-1~deb11u8 && \
    # Remove the default Nginx configuration to enforce our own.
    rm -rf /etc/nginx/conf.d/* && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/log/*

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s \
    CMD curl -f http://localhost/ || exit 1
