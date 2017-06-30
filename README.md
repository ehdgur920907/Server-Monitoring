# 1) 프로젝트 개요
서버들을 관리하기 위해서는 주기적으로 서버의 상태를 파악해야 합니다.
<br>
서버의 하드웨어적인 면을 실시간으로 모니터링하는 것은 서버들을 관리하기 해야할 가장 기본적인 행동이라 생각합니다.
<br>
<br>
이 프로젝트는 서버들의 간단한 시스템 정보를 시각화해서 실시간으로 보여주는 것입니다.

# 2) 프로젝트 사용 기술
Netty, Spring MVC, AJAX, JSON, Java API(Sigar, Oshi), JSP, 
<br>
MyBatis, MySQL, jQuery, HTML, CSS, Bootstrap, D3.js, Chart.js

# 3) 프로젝트 가이드 라인
![image](https://user-images.githubusercontent.com/15026049/27531378-52e56c4e-5a97-11e7-93b8-158f4897bc99.png)

# 4) 프로젝트 구동 화면
왼쪽 화면은 현재 서버들의 상태를 확인할 수 있습니다. status 부분이 "danger, warning, normal"로 나뉘어 시스템 상태에 따라 색깔이 변하게 됩니다.
오른쪽 화면은 서버 리스트에서 확인하고 싶은 서버를 클릭하면 원형 그래프에 실시간으로 시스템 상태가 나타나게 됩니다.

<br>
![image](https://user-images.githubusercontent.com/15026049/26915239-3d8b0556-4c60-11e7-8ddf-ec52c13d2e27.png)

cpu bar, cpu wave, memory, disk
<br>
![image](https://user-images.githubusercontent.com/15026049/26915242-40c8a110-4c60-11e7-82bc-94995ab0deb9.png)
