alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.65-2.b17.el7_1.x86_64/jre
export HADOOP_PREFIX="/home/bigdata/hadoop-2.6.0"
export HADOOP_HOME="/home/bigdata/hadoop-2.6.0"
export HADOOP_INSTALL="/home/bigdata/hadoop-2.6.0" 
export PATH=$PATH:$HADOOP_INSTALL/bin:$HADOOP_INSTALL/sbin



