## PAAS-TA-DELIVERY-PIPELINE-RELEASE  

### PaaS-TA Delivery Pipeline Release Configuration  

  - haproxy : 1 machine  
  - delivery-pipeline-ui : N machine(s)  
  - delivery-pipeline-service-broker : 1 machine  
  - delivery-pipeline-common-api : N machine(s)  
  - delivery-pipeline-api : N machine(s)  
  - delivery-pipeline-inspection-api : N machine(s)  
  - delivery-pipeline-binary-storage-api : 1 machine  
  - delivery-pipeline-scheduler : 1 machine  
  - ci_server : N machine(s)  
  - inspection : 1 machine  
  - binary_storage : 1 machine  
  - mariadb : 1 machine  
  - postgres : 1 machine  

### Create PaaS-TA Delivery Pipeline Release  
  - Download the latest Delivery Pipeline Release  
    ```   
    $ git clone https://github.com/PaaS-TA/PAAS-TA-DELIVERY-PIPELINE-RELEASE.git
    $ cd PAAS-TA-DELIVERY-PIPELINE-RELEASE  
    ```  
  - Download & Copy "source files" into the src directory  
    ```  
    ## download source files
    $ wget -O src.zip http://45.248.73.44/index.php/s/ncWqZNMFzq3fMdN/download

    ## unzip download source files
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
            └── swift-all-in-one.tar.gz  
    ```  
  - Create PaaS-TA Delivery Pipeline Release  
    ```  
    ## <VERSION> :: release version (e.g. 1.0.1)
    ## <RELEASE_TARBALL_PATH> :: release file path (e.g. /home/ubuntu/workspace/paasta-delivery-pipeline-release-<VERSION>.tgz)
    $ bosh -e <bosh_name> create-release --name=paasta-delivery-pipeline-release --version=<VERSION> --tarball=<RELEASE_TARBALL_PATH> --force
    ```  

### Deployment    
  - https://github.com/PaaS-TA/service-deployment  
