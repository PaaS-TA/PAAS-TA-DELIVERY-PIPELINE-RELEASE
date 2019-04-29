#!/bin/bash
# stemcell 버전은 3445.2 버전으로 사용하시고 https://github.com/PaaS-TA/Guide-2.0-Linguine-/blob/master/Download_Page.md 에서 다운받아 쓰십시요.
# vsphere 인 경우 에는 use-public-network-vsphere.yml 사용하여 public ip를 설정 하고 그 이외의 IaaS는 use-public-network.yml 사용한다.

bosh -d paasta-delivery-pipeline-service deploy paasta_delivery_pipeline_bosh2.0.yml \
   -o use-public-network-vsphere.yml \
   -v default_network_name=service_private \
   -v public_network_name=service_public \
   -v stemcell_os=ubuntu-trusty \
   -v stemcell_version=3445.21 \
   -v vm_type_small=minimal
