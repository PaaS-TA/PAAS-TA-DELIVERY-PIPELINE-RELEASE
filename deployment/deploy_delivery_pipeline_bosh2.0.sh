#!/bin/bash

bosh -d paasta-delivery-pipeline-service deploy paasta_delivery_pipeline_bosh2.0.yml \
   -o use-public-network-[Your_IaaS].yml \
   -v internal_network_name="default" \
   -v public_network_name="vip" \
   -v stemcell_os=ubuntu-xenial \
   -v stemcell_version=315.64 \
   -v vm_type_small=small
