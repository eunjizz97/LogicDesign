
# Digital Clock Poject
## 스위치 소개 

**sw0**: mode 변경
- MODE_CLOCK 시계
- MODE_SETUP 시계 세팅
- MODE_ALARM 알람 세팅
- MODE_STOPW 스탑워치 (타이머)

**sw1**: position 변경 
- POS_SEC
- POS_MIN
-  POS_HR

**sw2**: 누를 때마다 해당 position 의 시간을 하나씩 증가

**sw3**: alarm_en ON / OFF
- 알람 OFF / stopwatch STOP
- 알람 ON / stopwatch ON

**sw4**: switch screen mode 
- switch screen mode OFF
- switch screen mode ON

**sw5**: YYMMDD mode
- YYMMDD mode OFF
- YYMMDD mode ON
- YYMMDD mode SETUP

**sw6**: 타이머 RESET
- 타이머 실행 되는 중
- 타이머 00:00:00 으로 변경 

**sw7**: 24시간을 12시간으로 변경
- 24시간 
- 12시간


## 기능 소개 
**1. 시계**: 00:00:00 부터 시계 작동

**2. 시계 셋업**: 원하는 시간으로 세팅 가능,
세팅하는 부분이 깜빡임

**3. 알람**: 원하는 알람 시간으로 세팅,
세팅한 알람 시간이 되면 '하울의 움직이는 성 OST' 알람 울림

**4. 스탑워치**: 스탑워치 모드일 때만 사용 가능, stop/start 기능 및 reset 기능
- stop 하고 나서 reset 을 눌러야만 작동
- reset 을 풀고 나서 start 를 눌러야만 작동 (이후 수정 예정)

**5. 화면변환**: 시계 모드일 때만 사용 가능, 상대방에게 시간 보여주는 용도

**6. YYMMDD**: 00.00.00부터 시계 작동, 원하는 날짜로 세팅 가능, 세팅하는 부분이 깜빡임 

**7. 24/12**: 시계 모드일 때만 사용 가능, 24시간으로 작동하는 시계를 12시간으로 바꾸는 기능 




## 코드 소개 

StackEdit stores your files in your browser, whic
<!--stackedit_data:
eyJoaXN0b3J5IjpbNTM0Mzc3MDYzLC0xNjI3MjU0NDk5XX0=
-->
