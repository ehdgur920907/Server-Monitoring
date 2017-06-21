# Simple Server Monitoring System(SSMS)

기관: 명지대학교 컴퓨터공학과
<br>
교수: 이강선 교수님
<br>
과목: 캡스톤 디자인1
<br>
팀명: Netty
<br>
<br>
60122454 이동혁
<br>
60122398 김세준
<br>
60122394 김병희
<br>

# 1) 개요
서버들을 관리하기 위해서는 주기적으로 서버의 상태를 파악해야 합니다.
<br>
서버의 하드웨어적인 면을 실시간으로 모니터링하는 것은
<br>
서버들을 관리하기 위해 해야할 가장 기본적인 행동이라 생각합니다.
<br>
<br>
저희 프로젝트는 현재 신세계 아이앤씨에서 쓰고 있는 서버 모니터링 시스템 ‘시스 마스터’를 모방하여
<br>
서버들의 간단한 시스템 정보를 시각화해서 실시간으로 보여주는 것입니다.

# 2) 사용 기술
네티, 스프링, AJAX, JSON, 자바 API(Sigar, Oshi), JSP, MyBatis, MySQL, jQuery, HTML, CSS, Bootstrap, D3.js, Chart.js
<br>
# 3) 사용 설명
server list 클릭
<br>
cpu 글씨 클릭 -> cpu_bar(3초 간격)
<br>
cpu 그래프 클릭 -> cpu_wave(3초 간격)
<br>
memory 글씨 클릭 -> memory(3초 간격)
<br>
disk 글씨 클릭 -> disk(3초 간격)
<br>

# 4) 구동 화면
index, monitiorng
<br>
![image](https://user-images.githubusercontent.com/15026049/26915239-3d8b0556-4c60-11e7-8ddf-ec52c13d2e27.png)

cpu bar, cpu wave, memory, disk
<br>
![image](https://user-images.githubusercontent.com/15026049/26915242-40c8a110-4c60-11e7-82bc-94995ab0deb9.png)
