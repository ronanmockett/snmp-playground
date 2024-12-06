#!/bin/sh

# Start the first snmptrapd instance
echo "Starting snmp-trap-receiver-1 on port 162" & snmptrapd -f -On udp:0.0.0.0:162 -Lo -C -c /etc/snmp/snmp-trap-1/snmptrapd.conf &
# Start the second snmptrapd instance
echo "Starting snmp-trap-receiver-2 on port 163" & snmptrapd -f -On udp:0.0.0.0:163 -Lo -C -c /etc/snmp/snmp-trap-2/snmptrapd.conf

wait