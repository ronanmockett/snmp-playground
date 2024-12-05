FROM rockylinux:9

# Install snmptrapd and dependencies
RUN dnf -y install net-snmp net-snmp-utils && \
    dnf clean all

# Copy custom snmptrapd configuration
COPY snmptrapd.conf /etc/snmp/snmptrapd.conf
RUN touch /var/log/snmptrapd.log

# Expose SNMP trap port
EXPOSE 162/udp

# Start snmptrapd in foreground
CMD ["snmptrapd", "-f", "-Lo"]