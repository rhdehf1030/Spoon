# Spoon Radio 과제

## File Structure

0.  메인 & 공통사항

-   main: 각 모듈 호출 및 연계
-   각 폴더의 variables: 변수 저장용
-   각 폴더의 output: 모듈 결괏값 출력

1.  Networking

-   createVPC: VPC 생성
-   createSubnet: 서브넷 생성
-   createRouterTable: 라우팅 테이블 생성
-   associationRouterTable: 라우팅 테이블과 서브넷 연결
-   createInternetGateway: 인터넷 게이트웨이 생성
-   setInternetGateway: 인터넷 게이트웨이와 라우팅 테이블 연결

2.  Security Group

-   createSecurityGroup: 보안그룹 생성
-   createSecurityRule: 보안규칙 생성

3.  ALB

-   createALB: Application Load Balancer 생성
-   createTarget: 타겟 그룹 생성
-   createALBListener: ALB Listener 생성

4.  LEMP

-   createInstance: Instance 생성
-   settings: Instance 초기 실행 시 실행용 스크립트 저장
