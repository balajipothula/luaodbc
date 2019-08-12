sudo su
curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/msprod.repo
exit

sudo yum -y remove mssql-tools unixODBC-utf16-devel
sudo yum -y install mssql-tools unixODBC-devel

sudo yum -y check-update
sudo yum -y update mssql-tools

echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc
