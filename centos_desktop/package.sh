yum install java-1.8.0-openjdk.x86_64
yum install httpd
cd /home
mkdir bigdata
cd bigdata
wget http://www.interior-dsgn.com/apache/hadoop/common/hadoop-2.6.0/hadoop-2.6.0.tar.gz
tar -xvzf hadoop-2.6.0.tar.gz
#after hadoop configuration
source ~/.bashrc
hdfs namenode -format
