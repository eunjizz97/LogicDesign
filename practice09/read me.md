# Lab 09
## 실습 내용
### **적외선 컨트롤러 (IR Controller)를 이용한 리모컨 송신 설계** 
  : NEC 적외선 통신 규약을 사용함.
  GitHub에 제공된 소스코드 사용: top module (top) 만 채워서 설계 : 이번 실습은 Test Bench 를 이용하여 wave form 만들어서 확인 & FPGA 로 확인
  
###  **FPGA** : FPGA의 적외선 컨트롤러를 이용하여 리모컨 작동에 대해 관찰 
### **ModelSim - Wave Form** : u_ir 의 신호들의 wave를 추가하여 관찰
    i_ir_rxb: 리모컨 송신 신호 (반전)
    ir_rx: 리모컨 송신 신호
    '사진 추가'

##  **동작설명**  
### 리모컨 송신 신호 
	  1. Lead code: 프레임의 모드 선택
	  2. Custom code: 특정회사를 나타냄
	  3. Data code: 송신 데이터 (반전 되게 하나 더 만들음)
### 코드 설명
	1. seq_rx : 2'b00 = 모두 low, 2'b01 = 현재 high 들어온 상태, 2'b10 = 모두 high 
	2. Data code: 
	- seg_rx가 2'b10이면 + 1'b1 
	- 32bit 가 되면 한 주기 완성
	3. Leader code: cnt_h가 8999와 599만큼 간 후에 custom code 발생
	

<!--stackedit_data:
eyJoaXN0b3J5IjpbNTgwODIzNDg3XX0=
-->
