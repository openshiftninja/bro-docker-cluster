ARG BRO_VER
FROM bro/node:${BRO_VER}

ARG BRO_VER
ENV BROHOME=/usr/local/bro-${BRO_VER}

COPY local.bro ${BROHOME}/share/bro/site/local.bro
COPY node.cfg ${BROHOME}/etc/node.cfg
COPY run_bro.sh ${BROHOME}/bin/run_bro.sh
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN chmod a+x ${BROHOME}/bin/run_bro.sh
CMD ["/usr/bin/supervisord","-c","/etc/supervisor/supervisord.conf"]
