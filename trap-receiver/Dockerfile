FROM rockylinux:9

# Install snmptrapd and dependencies
RUN dnf -y install net-snmp net-snmp-utils iproute && \
    dnf clean all

# Copy custom snmptrapd configuration
COPY snmp-trap-1/ /etc/snmp/snmp-trap-1
COPY snmp-trap-2/ /etc/snmp/snmp-trap-2
COPY start-snmptrapd.sh /usr/local/bin/start-snmptrapd.sh

RUN touch /var/log/snmptrapd.log

# Expose SNMP trap port
EXPOSE 162/udp 
EXPOSE 163/udp

CMD [ "/usr/local/bin/start-snmptrapd.sh" ]
