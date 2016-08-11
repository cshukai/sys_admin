# .bashrc

# Source glob al definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export PATH=$PATH:/home/shchang/sw/transfer/edirect
export SPARK_HOME=/cluster/software/spark/spark-1.6.0-bin-hadoop2.6/