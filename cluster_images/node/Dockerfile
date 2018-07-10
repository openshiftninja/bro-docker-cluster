ARG BRO_VER
FROM bro/bro:${BRO_VER}

ARG BRO_VER
COPY keys/id_rsa.pub /root/.ssh/authorized_keys2
COPY keys/id_rsa /root/.ssh/id_rsa
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY ssh_config /root/.ssh/config

RUN apt-get update && apt-get install -y openssh-server supervisor rsync net-tools --no-install-recommends && mkdir /run/sshd && \
    sed "s/#PermitRootLogin prohibit-password/PermitRootLogin yes/" /etc/ssh/sshd_config  > /etc/ssh/sshd_config && \
        chmod 0600 /root/.ssh/config && chmod 0600 /root/.ssh/id_rsa
