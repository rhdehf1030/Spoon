# Spoon Radio 과제

### 메인 & 공통사항

1. main: 각 모듈 호출 및 연계
2. 각 폴더의 variables: 변수 저장용
3. 각 폴더의 output: 모듈 결괏값 출력

### Networking

VPC/라우팅/Internet Gateway 등 관리

1. createVPC: VPC 생성
2. createSubnet: Subnet 생성
3. createRouterTable: Routing Table 생성
4. associationRouterTable: Routing Table Subnet 연결
5. createInternetGateway: Internet Gateway 생성
6. setInternetGateway: Internet Gateway와 Routing Table 연결
7. createNATGateway: NAT Gateway 생성

### Security Group

1. createSecurityGroup: Security Group 생성
2. createSecurityRule: Security Rule 생성

### ALB

1. createALB: Application Load Balancer 생성
2. createTarget: Target Group 생성
3. createALBListener: ALB Listener 생성

### LEMP

1. createInstance: Instance 생성
2. settings directory: Instance 초기 실행 시 실행용 스크립트 저장
