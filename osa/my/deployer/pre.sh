yum update -y
yum install https://rdoproject.org/repos/openstack-queens/rdo-release-queens.rpm -y
yum install git ntp ntpdate openssh-server python-devel sudo '@Development Tools' -y
git clone -b 17.1.12 https://git.openstack.org/openstack/openstack-ansible /opt/openstack-ansible
cd /opt/openstack-ansible
scripts/bootstrap-ansible.sh
