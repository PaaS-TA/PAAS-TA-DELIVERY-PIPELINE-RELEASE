echo "################################### Delete deployment :: "
bosh delete-deployment -d paasta-delivery-pipeline-service
echo "################################### Delete deployment :: "

echo "################################### Delete release :: "
bosh delete-release paasta-delivery-pipeline-release
echo "################################### Delete release :: "

echo "################################### Delete dev_releases/* :: "
sudo rm -rf paasta-delivery-pipeline-release.tgz
echo "################################### Delete dev_releases/* :: "

echo "################################### Delete check :: s"
bosh deployments
bosh releases
file_name="dev_releases"
if ! test -e $file_name
then echo "############## WoT-oneM2M-release-1.0.tgz > file delete success."
fi
echo "################################### Delete check :: e"

