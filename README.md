# Port Check Program

Developed by two devices to communicate using ROS as the execution script of the secondary PC between the primary and secondary PCs.

두 개의 기기에서 ROS를 사용하여 통신 시 프라이머리 PC와 세컨더리 PC 중 세컨더리 PC의 실행 스크립트로 사용하기 위해 개발함

Wait until the master PC is ready on the secondary PC and then run ROS.

세컨더리 PC에서 마스터 PC가 준비될 때까지 기다린 후에 ROS를 실행한다.

아이디어:
ROS 마스터의 포트 11311이 열려 있는지 체크한다.
열려 있으면 -> ROS 마스터 실행중 -> 세컨더리 PC의 ROS 실행(나의 경우, 로봇의 roscore 실행)
닫혀 있으면 -> ROS 마스터 실행 안됨 -> 포트 열릴 때까지 체크

Tested on Ubuntu 20.04
