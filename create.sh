echo "################################### Create release :: s"

bosh create-release --name=paasta-delivery-pipeline-release --tarball=paasta-delivery-pipeline-release.tgz --version=1.0


echo "################################### Create release :: e"

echo "################################### Upload release :: s"
bosh upload-release paasta-delivery-pipeline-release.tgz
echo "################################### Upload release :: e"


#echo "################################### bosh deployment :: s"
#bosh deployment deployment/paasta-delivery-pipeline-vsphere-1.0-dev.yml
#echo "################################### bosh deployment :: e"
#
#echo "################################### bosh deploy :: s"
#bosh deploy --no-redact
#echo "################################### bosh deploy :: e"
#
#echo "################################### bosh deploy Check:: s"
#bosh releases
#bosh deployments
#bosh vms delivery-pipeline-release
#echo "################################### bosh deploy Check:: e"



