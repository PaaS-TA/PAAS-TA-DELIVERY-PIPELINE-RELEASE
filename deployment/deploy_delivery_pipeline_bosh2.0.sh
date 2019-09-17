#!/bin/bash
# stemcell 버전은 3445.2 버전으로 사용하시고 https://github.com/PaaS-TA/Guide-2.0-Linguine-/blob/master/Download_Page.md 에서 다운받아 쓰십시요.

bosh -d paasta-delivery-pipeline-service deploy paasta_delivery_pipeline_bosh2.0.yml \
   -o use-public-network-[Your_IaaS].yml \
   -v internal_network_name="default" \
   -v public_network_name="vip" \
   -v stemcell_os=ubuntu-xenial \
   -v stemcell_version=315.36 \
   -v vm_type_small=small
