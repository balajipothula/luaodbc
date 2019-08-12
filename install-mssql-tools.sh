#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 12 August 2019,
# Description : Installing MS Tools.

# update package repositories.
yum -y update

# adding mssql-tools repository on rhel_v8.
cat > /etc/yum.repos.d/msprod.repo <<EOF
[packages-microsoft-com-prod]
name=packages-microsoft-com-prod
baseurl=https://packages.microsoft.com/rhel/8/prod/
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF

# removing previously installed mssql-tools and unixODBC-utf16-devel.
yum -y remove  mssql-tools unixODBC-utf16-devel

# installing mssql-tools and unixODBC-devel.
yum -y install mssql-tools unixODBC-devel

# updating mssql-tools to latest.
yum -y update mssql-tools

# setting mssql-tools binaries path permanently.
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc

# updating environment path.
source ~/.bashrc
