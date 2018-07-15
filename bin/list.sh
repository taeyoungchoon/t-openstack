openstack server list -c Networks -c Name -c Status -f value | \
awk '{ print $3 " " $2 " " $1 }' | \
sed -e 's/ctlplane=//' -e 's/overcloud\-//' -e 's/\-0//' | \
sed -e 's/cont/Cont/' | \
sort
