# agent/Dockerfile
FROM rockylinux:9

# Install snmpd and dependencies
RUN dnf -y install net-snmp net-snmp-utils && \
    dnf clean all

# Copy the SNMP configuration file
COPY snmpd.conf /etc/snmp/snmpd.conf

# Expose SNMP UDP port
EXPOSE 161/udp

# Start SNMP agent in foreground
CMD ["snmpd", "-f", "-Lo"]