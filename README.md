# PAAS-TA-DELIVERY-PIPELINE-RELEASE
bosh 2.0 PAAS-TA-DELIVERY-PIPELINE-RELEASE

stemcell ubuntu-xenial 만 지원됨

src
---
src 폴더에 각 package의 설치파일이 위치해야 한다.

src <br>

├── cf-cli <br>
|     └── cf-cli_6.26.0_linux_x86-64.tgz <br>
├── delivery-pipeline-binary-storage-api <br>
|     └── delivery-pipeline-api.war <br>
├── delivery-pipeline-binary-storage-api <br>
|     └── delivery-pipeline-binary-storage-api.jar <br>
├── delivery-pipeline-common-api <br>
|     └── delivery-pipeline-common-api.jar <br>
├── delivery-pipeline-inspection-api <br>
│     └── delivery-pipeline-inspection-api.jar <br>
├── delivery-pipeline-scheduler <br>
│     └── delivery-pipeline-scheduler.jar <br>
├── delivery-pipeline-service-broker <br>
│     └── delivery-pipeline-service-broker.jar <br>
├── delivery-pipeline-ui <br>
│     └── delivery-pipeline-ui.war <br>
├── git <br>
│     └── git-2.9.3.tar.gz <br>
├── gradle <br>
│     └── gradle-2.14.1-bin.zip <br>
│     └── gradle-3.5-bin.zip <br>
├── haproxy <br>
│     └── haproxy-1.6.5.tar.gz <br>
├── java <br>
│     └── server-jre-8u121-linux-x64.tar.gz <br>
├── jenkins <br>
│     └── jenkins.war <br>
│     └── update_files.tar.gz <br>
├── mariadb <br>
│     └── mariadb-10.1.22-linux-x86_64.tar.gz <br>
├── maven <br>
│     └── apache-maven-3.5.0-bin.tar.gz <br>
├── postgres <br>
│     └── postgresql-9.6.5-1-linux-x64-binaries.tar.gz <br>
├── python <br>
│     └── Python-2.7.8.tgz <br>
├── sonarqube <br>
│     └── sonarqube-5.6.7.zip <br>
├── sshpass <br>
│     └── sshpass-1.06.tar.gz <br>
├── swift-all-in-one <br>
│     └── swift-2.2.0.tar.gz <br>
│     └── swift-all-in-one-deb.tar.gz <br>
│     └── swift-all-in-one-whl.tar.gz <br>
│     └── swiftonfile-2.5.0.tar.gz <br>
└── README.md <br>


```
$ cd ~/
$ git clone https://github.com/PaaS-TA/PAAS-TA-DELIVERY-PIPELINE-RELASE.git
$ cd ~/PAAS-TA-DELIVERY-PIPELINE-RELASE
$ wget http://45.248.73.44/index.php/s/SGRqf3rkoio2aD2/download
$ unzip PAAS-TA-DELIVERY-PIPELINE-RELASE-SRC.zip
```
