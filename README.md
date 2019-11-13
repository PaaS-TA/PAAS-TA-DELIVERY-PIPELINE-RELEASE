# PAAS-TA-DELIVERY-PIPELINE-RELEASE
stemcell ubuntu-xenial 만 지원됨

### Create PaaS-TA Delivery Pipeline Service Release
- Download the latest Release
    ```  
    $ git clone https://github.com/PaaS-TA/PAAS-TA-DELIVERY-PIPELINE-RELEASE.git
    ```
- Download & Copy "source files" into the src directory
    ```  
    ## download source files
    $ cd PAAS-TA-DELIVERY-PIPELINE-RELEASE  
    $ wget -O src.zip http://45.248.73.44/index.php/s/ncWqZNMFzq3fMdN/download
    $ unzip src.zip  

    ## src directory
    src  
        ├── cf-cli  
        │   └── cf-cli_6.26.0_linux_x86-64.tgz  
        ├── delivery-pipeline-api  
        │   └── delivery-pipeline-api.war  
        ├── delivery-pipeline-binary-storage-api  
        │   └── delivery-pipeline-binary-storage-api.jar  
        ├── delivery-pipeline-common-api  
        │   └── delivery-pipeline-common-api.jar  
        ├── delivery-pipeline-inspection-api  
        │   └── delivery-pipeline-inspection-api.jar  
        ├── delivery-pipeline-scheduler  
        │   └── delivery-pipeline-scheduler.jar  
        ├── delivery-pipeline-service-broker  
        │   └── delivery-pipeline-service-broker.jar  
        ├── delivery-pipeline-ui  
        │   └── delivery-pipeline-ui.war  
        ├── git  
        │   └── git-2.9.3.tar.gz  
        ├── gradle  
        │   ├── gradle-2.14.1-bin.zip  
        │   └── gradle-3.5-bin.zip  
        ├── haproxy  
        │   └── haproxy-1.6.5.tar.gz  
        ├── java  
        │   └── server-jre-8u121-linux-x64.tar.gz  
        ├── jenkins  
        │   ├── jenkins.war  
        │   └── update_files.tar.gz  
        ├── mariadb  
        │   └── mariadb-10.1.22-linux-x86_64.tar.gz  
        ├── maven  
        │   └── apache-maven-3.5.0-bin.tar.gz  
        ├── postgres  
        │   └── postgresql-9.6.5-1-linux-x64-binaries.tar.gz   
        ├── python  
        │   └── Python-2.7.8.tgz  
        ├── sonarqube  
        │   └── sonarqube-5.6.7.zip  
        ├── sshpass  
        │   └── sshpass-1.06.tar.gz  
        └── swift-all-in-one  
        │   └── swift-all-in-one.tar.gz  
    ```
- Create Delivery Pipeline Service Release
    ```
    $ cd PAAS-TA-DELIVERY-PIPELINE-RELEASE
    ## <RELEASE_TARBALL_PATH> :: release file path (e.g. /home/ubuntu/workspace/paasta-delivery-pipeline-release.tgz) 
    $ bosh -e <bosh_name> create-release --name=paasta-delivery-pipeline-release --version=1.0 --tarball=<RELEASE_TARBALL_PATH> --force
    ```
