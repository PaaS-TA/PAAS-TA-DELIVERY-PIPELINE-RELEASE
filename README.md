## Related Repositories

<table>
  <tr>
    <td colspan=2 align=center>플랫폼</td>
    <td colspan=2 align=center><a href="https://github.com/PaaS-TA/paasta-deployment">어플리케이션 플랫폼</a></td>
    <td colspan=2 align=center><a href="https://github.com/PaaS-TA/paas-ta-container-platform">컨테이너 플랫폼</a></td>
  </tr>
  <tr>
    <td colspan=2 rowspan=2 align=center>포털</td>
    <td colspan=2 align=center><a href="https://github.com/PaaS-TA/portal-deployment">AP 포털</a></td>
    <td colspan=2 align=center><a href="https://github.com/PaaS-TA/container-platform-portal-release">CP 포털</a></td>
  </tr>
  <tr align=center>
    <td colspan=4><a href="https://github.com/PaaS-TA/PaaS-TA-Monitoring">모니터링 대시보드</a></td>
  </tr>
  <tr align=center>
    <td rowspan=2 colspan=2><a href="https://github.com/PaaS-TA/monitoring-deployment">모니터링</a></td>
    <td><a href="https://github.com/PaaS-TA/PaaS-TA-Monitoring-Release">Monitoring</a></td>
    <td><a href="https://github.com/PaaS-TA/paas-ta-monitoring-logsearch-release">Logsearch</a></td>
    <td><a href="https://github.com/PaaS-TA/paas-ta-monitoring-influxdb-release">InfluxDB</a></td>
    <td><a href="https://github.com/PaaS-TA/paas-ta-monitoring-redis-release">Redis</a></td>
  </tr>
  <tr align=center>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-PINPOINT-MONITORING-RELEASE">Pinpoint</td>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-PINPOINT-MONITORING-BUILDPACK">Pinpoint Buildpack</td>
    <td></td>
    <td></td>
  </tr>
  </tr>
  <tr align=center>
    <td rowspan=4 colspan=2><a href="https://github.com/PaaS-TA/service-deployment">AP 서비스</a></td>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-CUBRID-RELEASE">Cubrid</a></td>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-API-GATEWAY-SERVICE-RELEASE">Gateway</a></td>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-GLUSTERFS-RELEASE">GlusterFS</a></td>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-APP-LIFECYCLE-SERVICE-RELEASE">Lifecycle</a></td>
  </tr>
  <tr align=center>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-LOGGING-SERVICE-RELEASE">Logging</a></td>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-MONGODB-SHARD-RELEASE">MongoDB</a></td>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-MYSQL-RELEASE">MySQL</a></td>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-PINPOINT-RELEASE">Pinpoint APM</a></td>
  </tr>
  <tr align=center>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-DELIVERY-PIPELINE-RELEASE">🚩 Pipeline</a></td>
    <td align=center><a href="https://github.com/PaaS-TA/rabbitmq-release">RabbitMQ</a></td>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-ON-DEMAND-REDIS-RELEASE">Redis</a></td>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-SOURCE-CONTROL-RELEASE">Source Control</a></td>
  </tr>
  <tr align=center>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-WEB-IDE-RELEASE-NEW">WEB-IDE</a></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr align=center>
    <td rowspan=1 colspan=2><a href="https://github.com/PaaS-TA/paas-ta-container-platform-deployment">CP 서비스</a></td>
    <td><a href="https://github.com/PaaS-TA/container-platform-pipeline-release">Pipeline</a></td>
    <td><a href="https://github.com/PaaS-TA/container-platform-source-control-release">Source Control</a></td>
    <td></td>
    <td></td>
  </tr>
</table>
<i>🚩 You are here.</i>



  

  


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
    $ wget -O src.zip https://nextcloud.paas-ta.org/index.php/s/PBrbiNkKWNJ6ras/download

    ## unzip download source files
    $ unzip src.zip  

    ## src directory
    src  
        ├── cf-cli  
        │   └── cf-cli_6.26.0_linux_x86-64.tgz  
        ├── delivery-pipeline-api  
        │   └── delivery-pipeline-api-1.0.3.war  
        ├── delivery-pipeline-binary-storage-api  
        │   └── delivery-pipeline-binary-storage-api.jar  
        ├── delivery-pipeline-common-api  
        │   └── delivery-pipeline-common-api-1.0.2.jar
        ├── delivery-pipeline-inspection-api  
        │   └── delivery-pipeline-inspection-api.jar  
        ├── delivery-pipeline-scheduler  
        │   └── delivery-pipeline-scheduler.jar  
        ├── delivery-pipeline-service-broker  
        │   └── delivery-pipeline-service-broker.jar  
        ├── delivery-pipeline-ui  
        │   └── delivery-pipeline-ui-1.0.2.war  
        ├── git  
        │   └── git-2.9.3.tar.gz  
        ├── gradle  
        │   ├── gradle-2.14.1-bin.zip  
        │   ├── gradle-3.5-bin.zip
        │   ├── gradle-4.10.3-bin.zip
        │   ├── gradle-5.6.4-bin.zip
        │   ├── gradle-6.7.1-bin.zip  
        │   └── gradle-7.3.3-bin.zip          
        ├── haproxy  
        │   └── haproxy-1.6.5.tar.gz  
        ├── java  
        │   └── server-jre-8u121-linux-x64.tar.gz  
        ├── jenkins  
        │   ├── jenkins.war  
        │   └── update_files_1.2.0.tar.gz  
        ├── mariadb  
        │   └── mariadb-10.5.13-linux-x86_64.tar.gz
        ├── maven  
        │   ├── apache-maven-3.5.0-bin.tar.gz          
        │   ├── apache-maven-3.6.3-bin.tar.gz                  
        │   └── apache-maven-3.8.4-bin.tar.gz  
        ├── openjdk
        │   ├── openjdk-11_linux-x64_bin.tar.gz
        │   └── openjdk-17_linux-x64_bin.tar.gz
        ├── postgres  
        │   └── postgresql-11.14.tar.gz
        ├── python  
        │   └── Python-3.6.9.tgz
        ├── sonarqube  
        │   └── sonarqube-5.6.7-PaaS-TA.zip
        ├── sshpass  
        │   └── sshpass-1.06.tar.gz  
        └── swift-all-in-one  
            ├── swift-2.23.2-bionic-dependencies.tar.gz
            └── swift-2.23.2.tar.gz
    ```  
  - Create PaaS-TA Delivery Pipeline Release  
    ```  
    ## <VERSION> :: release version (e.g. 1.2.0)
    ## <RELEASE_TARBALL_PATH> :: release file path (e.g. /home/ubuntu/workspace/paasta-delivery-pipeline-release-<VERSION>.tgz)
    $ bosh -e <bosh_name> create-release --name=paasta-delivery-pipeline-release --version=<VERSION> --tarball=<RELEASE_TARBALL_PATH> --force
    ```  

### Deployment    
  - https://github.com/PaaS-TA/service-deployment  


## Contributors ✨
<a href="https://github.com/PaaS-TA/PAAS-TA-DELIVERY-PIPELINE-RELEASE/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=PaaS-TA/PAAS-TA-DELIVERY-PIPELINE-RELEASE" />
</a>
