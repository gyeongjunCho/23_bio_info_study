<div align="center"> 

<h1> 23년도 국립농업과학원 바이오인포메틱스 연구회 <br> R 자료실 </h1> 

</div>


<div align="right">국립농업과학원 농업미생물과</div>

<div align="right">조경준</div>

<br>

------------------------------------------

<br>

### 머릿말

안녕하세요? 만나뵙게 되어 정말 반갑습니다.  
이 연구회에서 R관련 학습 정보를 제공하게된 조경준 입니다.  

올해 이 연구회에서 제가 생각하는 목표는 미생물 염기서열 만으로 유전체 지도 정도는 직접 만들 수 있을 정도로 그래프를 잘 그리게 되는 것입니다.
아무것도 몰라도 그냥 따라하다보면 하면 년말 쯤에는 잘될꺼에요.  
모르는게 생기면 모임 시간이 아니더라도 위에 [이슈 게시판](https://github.com/gyeongjunCho/23_bio_info_study/issues)을 통하여 자유롭게 질문을 해주시면 제가 최대한 성실히 답변을 하겠습니다. (게시판 이용을 위해선 github계정을 하나 만드셔야되요.)

앞으로 잘 부탁 드립니다.

<br>

------

<div align="center">

<h3><font color="red">이슈 게시판 이용 시 주의사항</font></h3>
<p><font color="red">이 장소는 웹에 오픈되어 있습니다. 보안에 직접적으로 연관된 자료를 공유해서는 안됩니다.</font></p>


</div>

------

<br>

## 목차

<br>

### 5월  
[1주차 : R, Rstudio 설치 (Windows 10 이상 기준)](#5월-1주차--r-rstudio-설치-windows-10-이상-기준)  
[2주차 : R 데이터의 종류, 엑셀에 정리하는 방법](#5월-2주차--r-데이터의-종류-엑셀에-정리하는-방법)  
[3주차 : 함수, 그래프 그려보기](#5월-3주차-함수-그래프-그리기)  

### 6월
[1주차 : 글자데이터 다루기](#6월-1주차--글자-데이터-다루기)


<br>

------

<br>

### 5월 1주차 : R, Rstudio 설치 (Windows 10 이상 기준)

이미 노트북에 Rstudio를 설치하신분은 R설치와 Rstudio 설치를 안하셔도 됩니다.

자주 사용하게 될 패키지 설치로 넘어가 주세요.

<br>
   

- R 설치  

  1. R 개발하는 [공식 홈페이지](https://cran.r-project.org/bin/windows/base/old/)에서 **R 4.2.3**을 누릅니다.
  
  2. **R-4.2.3-win.exe**을 누르면 설치프로그램이 다운로드 됩니다.

  3. **R-4.2.3-win.exe**를 다운로드한 폴더에 가서 더블클릭 합니다.

  4. **실행**, 한국어 설정 후 **다음**을 눌러서  
   **C:\Program Files\R\R-4.2.3**에 설치를 진행해 주세요.

        <br>

   ><div align="center"> -- 토막상식 -- </div>  
   ><br>
   >
   >요즘은 대부분 버전을 **A.B.C**으로 표기하는데  
   >
   >**A**는 프로그램에 **큰 변화/기능추가** 가 있을 때  
   **B**는 프로그램에 **작은 변화/기능추가** 가 있을 때  
   **C**는 버그 고쳤을 때  
   >
   >숫자가 하나씩 올라가요.  
   >그래서 개인적으로는 **C**부분이 0인경우 **A.B**의 초기버전이라 버그가 많아서 사용을 피하는 편입니다.   

   
   <br>
   <br>

- Rstudio 설치

    R만 설치하면 무슨 70~80 년대 영화에서나 나올 법한 검은창에서 작업을 해야 됩니다. 그래서 사용하기 편하도록 기능들을 추가하는 Rstudio를 설치 해봅시다.

  1. Rstudio를 개발하는 [Posit 다운로드 페이지](https://posit.co/downloads/)에 방문하여 **Rstudio-desktop free** 버전을 다운로드 받습니다.
        * Rstudio-desktop **free** 파란색 버튼 클릭 
        * **DOWNLOAD RSTUDIO DESKTOP FOR WINDOWS** 파란색 버튼 클릭

  2. **RStudio-2023.03.0-386.exe**를 다운로드 받은 폴더로 가서 더블클릭

  3. **실행**버튼을 누르면 진행바가 채워지면서 설치 완료.

  4. Rstudio를 실행합니다.

  5. **Choose a specific version** 클릭 

  6. **C:\Program Files\R\R-4.2.3** 클릭

  7. **OK** 클릭

  8. 설치가 완료 됩니다.

    <br>
    <br>

- R에서 자주 쓰게될 패키지 설치

    1. Rstudio 실행후 좌상단 **File**, **New File**, **R script** 순으로 클릭

    2. 좌측이 둘로 나눠지며 좌상단에 메모장 같은게 형성됩니다.

    3. 아래 코드를 복사 붙여 넣기 하거나, 타이핑해서 입력  

        ~~~ R
        pkg <- c("tidyverse", "reshape", "reshape2", "stringr")
        install.packages(pkg)
        ~~~
            
    4. 각 코드 줄에 커서를 클릭해서 놓고 컨트롤 엔터

    5. 해당줄이 좌 하단의 R 콘솔로 내용이 넘어가며 코드가 대화형으로 진행, 자주 사용하게될 패키지가 설치 됩니다.

------------------------------

### 5월 2주차 : R 데이터의 종류, 엑셀에 정리하는 방법

사람 입장에서 보면, 컴퓨터는 데이터가 숫자인지 글자인지 구분을 잘 못합니다.  
그래서 숫자, 글자, 논리값(TRUE, FALSE)를 잘못인식했는지 가끔 확인해 줄 필요가 있죠.

#### 이론

- 데이터 유형

<div style="margin-left: 30px;">
<table>
  <tr>
    <th></th>
    <th>데이터 유형</th>
    <th>설명</th>
  </tr>
  <tr>
    <td rowspan="2">글자</td>
    <td>charactor</td>
    <td>순서가 없는 글자 데이터<br>정렬 될 때 알파벳 순으로 나열됨</td>
  </tr>
  <tr>
    <td>factor</td>
    <td>순서가 있는 글자 데이터<br>예1) 월 화 수 목 금 토 일 <br>예2) 하나 둘 셋 넷 다섯 여섯</td>
  </tr>
  <tr>
    <td rowspan="3">숫자</td>
    <td>int</td>
    <td>정수, 소숫점 이하 없음<br>예) 100 200 -1 0</td>
  </tr>
  <tr>
    <td>nummeric</td>
    <td>실수, 소숫점 이하 있음<br>예) 3.1425<br>간혹 에러메세지에서는 "double"로 표기함</td>
  </tr>
  <tr>
    <td>complex</td>
    <td>복소수 <br>예) 24+15i</td>
  </tr>
  <tr>
    <td>논리</td>
    <td>logical</td>
    <td>참, 거짓<br> 예)TRUE FALSE  </td>
  </tr>
</table>
</div>

<br>
<br>

  - 데이터 구조  
    그리고 데이터의 배열에 따라서 종류가 나뉩니다.  
    여기서는 데이터 구조라고 정의할게요.

<div style="margin-left: 30px;">
<table>
  <tr>
    <th></th>
    <th>데이터 구조</th>
    <th>설명</th>
  </tr>
  <tr>
    <td>1차원</td>
    <td>vector</td>
    <td>
    한 가지 유형의 데이터가 1자로 나열
    <br>
    <br>
    예시1)
      <table>
        <td>하나</td>
        <td>둘</td>
        <td>셋</td>
        <td>넷</td>
        <td>다섯</td>
        <td>여섯</td>
      </table>
    예시2) <br>
      <table>
        <td>월</td>
        <td>화</td>
        <td>수</td>
        <td>목</td>
        <td>금</td>
      </table>
    </td>
  </tr>
  <tr>
    <td rowspan="2">2차원</td>
    <td>matrix</td>
    <td>한 가지 유형의 데이터가 이차원적으로 나열<br><br>
    예시) 모든 데이터가 character인 matrix
      <table>
      <tr>
        <td>요일</td>
        <td>아침</td>
        <td>점심</td>
        <td>저녁</td>
      </tr>
      <tr>
        <td>월</td>
        <td>사과</td>
        <td>볶음밥</td>
        <td>삼겹살</td>
      </tr>
      <tr>
        <td>화</td>
        <td>바나나</td>
        <td>짜장면</td>
        <td>육개장</td>
      </tr>
      <tr>
        <td>수</td>
        <td>배</td>
        <td>탕수육</td>
        <td>주먹밥</td>
      </tr>
      <tr>
        <td>목</td>
        <td>망고</td>
        <td>짬뽕</td>
        <td>소고기</td>
      </tr>
            <tr>
        <td>금</td>
        <td>감자</td>
        <td>고구마</td>
        <td>국밥</td>
      </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td>data.frame</td>
    <td>세로로 나열된 다양한 데이터 유형의 vector가 가로로 합친 것<br>
    세로는 데이터 유형이 같고, 가로는 달라질 수 있음
    <br><br>
    예시)
      <table>
      <tr>
        <td>요일</td>
        <td>과일</td>
        <td>개수</td>
        <td>맛있음</td>
      </tr>
      <tr>
        <td>월</td>
        <td>사과</td>
        <td>2</td>
        <td>TRUE</td>
      </tr>
      <tr>
        <td>화</td>
        <td>바나나</td>
        <td>4</td>
        <td>TRUE</td>
      </tr>
      <tr>
        <td>수</td>
        <td>두리안</td>
        <td>5</td>
        <td>FALSE</td>
      </tr>
      <tr>
        <td>목</td>
        <td>망고</td>
        <td>12</td>
        <td>TRUE</td>
      </tr>
            <tr>
        <td>금</td>
        <td>포도</td>
        <td>24</td>
        <td>TRUE</td>
      </tr>
      </table>
    </td>
  </tr>
    <tr>
    <td>3차원</td>
    <td>array</td>
    <td>같은 규모와 형태의 matrix를 쌓은 것, 데이터 유형이 모두 같아야 함 </td>
  </tr>
    <tr>
    <td>복합</td>
    <td>list</td>
    <td>다양한 데이터 구조를 강제로 하나의 카테고리로 묶은 것</td>
  </tr>
</table>
</div>

<div style="margin-left: 30px;">
R의 데이터 구조의 특징은 data.frame이라고 볼 수 있습니다. 대부분의 연구 데이터는 data.frame 때문에 쉽게 R로 정리 및 표현 할 수 있습니다. R이 유명해진 이유 중에 하나 이기도 합니다.
</div>

#### 실전 
  1. vector 만들기
     vector는 `c()`로 만들수 있습니다.
     `<-`는 왼쪽 문자로 저장한다는 뜻입니다.

        ~~~ R
        과일 <- c("사과", "바나나", "두리안", "망고", "포도")
        과일
        ~~~
        
      글자는 위와 같이 따옴표 또는 쌍따옴표 안에 적어야 됩니다.  

      숫자는 아래 처럼 따옴표 없이 적어야 됩니다.
        ~~~ R
        개수 <- c(2, 4, 5, 12, 24)
        개수
        ~~~
      
      순서있는 글자, factor로 구성되는 vector는 `c()`로 벡터를 만든 후 `factor()`로 순서(levels)를 지정하여 만들수 있습니다.
        ~~~ R
        요일 <- c("월", "화", "수", "목", "금")
        요일 <- factor(요일,  level= c("월", "화", "수", "목", "금"))
        요일
        ~~~

  2. 데이터 유형 유형 강제변환 하기
     만약 데이터 유형을 확인할 필요가 있다면

        ~~~ R
        class(개수) # charactor 반환
        ~~~

     `class()` 함수는 안에 들어가는 내용이 벡터일때, `charactor`, `nummeric`, `logical` 인지 데이터 유형을 알려줍니다.

     글자로 강제변환을 할 일이 생기면 `as.charactor`를 쓰면 됩니다.
     이 외에도 `as.logical`, `as.nummeric` 등이 있습니다.

        ~~~ R
        요일.char <- as.charactor(요일) # charactor로 강제변환
        요일.char 
        order(요일) # factor라서 요일 월화수목금을 1 2 3 4 5 순으로 인식
        order(요일.char) # 요일 월화수목금을 한글순서인 5(금) 4(목) 3(수) 1(월) 2(화) 

        개수.char <- as.charactor(개수) #charactor로의 강제변환
        개수.char
        ~~~
     
     여기까지 따라한 출력 결과를 보면  
     charactor는

        ~~~ R
        [1] "2" "4" "5" "12" "24"
        ~~~

     nummeric은

        ~~~ R
        [1] 2 4 5 12 24
        ~~~

        으로 표기됩니다. 두개의 차이점이 보이시나요? **nummeric**은 따옴표 없이 출력되고, **charactor**는 따옴표로 출력이 됩니다.

  3. data.frame 만들기  
     data.frame은 길이가 같은 벡터들을 세로로 정렬해서 만들수 있습니다.

        ~~~ R
        df <- data.frame(요일, 과일, 개수)
        df
        ~~~

      `data.fram()`함수는 각 벡터이름을 열(세로열, column)이름으로 가지는 벡터들의 모임으로 만들어 줍니다.

      각각의 세로 열은 `$` 연산자로 나누어 벡터로 볼 수도 있습니다.
        ~~~ R
        df$요일
        df$과일
        df$개수
        ~~~

      벡터인지 data.frame인지 확인하는 함수는 `is.vector()`, `is.data.frame()`함수가 있습니다.
        ~~~ R
        is.data.frame(df)       # TRUE 반환
        is.data.frame(df$요일)   # FALSE 반환
        
        is.vector(df)           # FALSE 반환
        is.vector(df$요일)       # TRUE 반환
        is.vector(df$과일)       # TRUE 반환
        is.vector(df$개수)       # TRUE 반환
        ~~~

  4. 엑셀 이용 시 data.frame 구조를 염두할 것  
     여기까지 살펴보면 엑셀로 저장했다가, data.frame으로 전환하여 사용할때 열(세로열, column)별로 정리를 해야 데이터 유형에 맞게 정리 할 수 있음을 알수 있습니다. (데이터가 많아지면 위아래로 긴 형태가 되겠죠)

      <table>
      <tr>
        <td>요일</td>
        <td>과일</td>
        <td>개수</td>
        <td>맛있음</td>
      </tr>
      <tr>
        <td>월</td>
        <td>사과</td>
        <td>2</td>
        <td>TRUE</td>
      </tr>
      <tr>
        <td>화</td>
        <td>바나나</td>
        <td>4</td>
        <td>TRUE</td>
      </tr>
      <tr>
        <td>수</td>
        <td>두리안</td>
        <td>5</td>
        <td>FALSE</td>
      </tr>
      <tr>
        <td>목</td>
        <td>망고</td>
        <td>12</td>
        <td>TRUE</td>
      </tr>
      <tr>
        <td>금</td>
        <td>포도</td>
        <td>24</td>
        <td>TRUE</td>
      </tr>
      <tr>
        <td>토</td>
        <td>복숭아</td>
        <td>2</td>
        <td>TRUE</td>
      </tr>
      <tr>
        <td>일</td>
        <td>자두</td>
        <td>10</td>
        <td>TRUE</td>
      </tr>
      </table>

     그리고 엑셀은 마이크로소프트 사가 만든 스프레드시트 프로그램이라 전용 프로그램이 필요합니다. 때문에 xlsx, xls 확장자로 저장하시되, R로 전환하고 싶은 파일의 sheet만 csv로 저장하면 됩니다.
     ><div align="center"> -- csv 파일 저장 방법 -- </div>  
     ><br> 
     > 1. 좌상단 '파일' 메뉴 클릭  <br> 
     > 2. '다른이름으로 저장' 클릭  <br> 
     > 3. '이 PC' 클릭  <br> 
     > 4. 저장메뉴 창이 뜨면 폴더 및 저장이름 설정 <br>  
     > 5. 아래 'Excel 통합문서(*.xlsx)' 클릭   <br> 
     > 6. 'CSV (쉼표로 분리)(*.csv)' 클릭하여 설정 후 저장 

     ><div align="center"> -- 토막상식 -- </div>  
     ><br> 
     > CSV(Comma Separated Values)는 말그대로 "," comma로 나누어 표기하는 방법입니다. 비슷한 걸로는 TSV(comma 대신 tab을 사용)가 있습니다. 매우 단순한 스프레드시트 저장방식 때문에 메모장 포함한 모든 문자 편집프로그램으로 열 수 있습니다. 때문에 오픈소스프로그램은 엑셀보다는 CSV, TSV을 많이 활용 합니다.<br><br> 
     > 예) 메모장으로 아래 처럼 같이 적고 "test.csv"로 저장한뒤 엑셀로 열 수 있습니다. <br><br> 
     > 요일,과일,개수,맛있음  <br> 
     > 월,사과,2,TRUE <br> 
     > 화,바나나,4,TRUE <br>  
     > 수,두리안,5,FALSE <br> 
     > 목,망고,12,TRUE <br>
     > 금,포도,24,TRUE <br>
     > 토,복숭아,2,TRUE <br>
     > 일,자두,10,TRUE

다음주는 오늘 만든 data.frame으로  ggplot을 통해 그래프 그리는 것을 해 보겠습니다.

------

### 5월 3주차: 함수, 그래프 그리기

#### R에서 함수란?

- 중고등학교에서 배운 함수랑 비슷

  조금 옛날 기억을 꺼내볼까요?

  <div align="center">

  $f(x, y) = x+2 \times y$

  </div>

  함수 $f$ 이걸 볼까요?
  $x$와 $y$는 아무 숫자나 들어갈수 있는 변수라고 합시다. 

  <div align="center">

  $x = 2$
  $y = 4$
  
  </div>

  일때
  
  <div align="center">

  $f(2, 4) = 2 + 2 \times 4$
  
  </div>

  이므로 결과는 $10$ 이 출력 됩니다.
  
  이걸 R로 표현 하면

  ~~~
  # 먼저 함수를 정의해 줍니다.
  F <- function(x, y){
        x + 2y 
     }

  # 위 R코드 구조: '함수이름' <- function('변수1', '변수2'... '변수n'){'변수들로 원하는 기능 설명'}
  ~~~
  
  F라는 함수를 정의했습니다. 
  이제 x와 y에 값을 마음데로 바꿔 볼까요?

  ~~~
  F(x=2, y=4)
  F(x=3, y=24)
  ~~~
  
  축하드립니다. 당신은 처음으로 F라고 불리는
  $x$, $y$ 두 숫자를 넣으면 자동으로 $x+ 2y$
  계산 하는 프로그램(함수)을 만들었어요.

  함수이름은 내맘데로 정의하면 됩니다. 
  숫자로 시작하지 않고 띄어쓰기 없이 지으면 되요.

  ~~~
  my_original_program <- function(x, y){ x + 2y }
  my_orogianl_program(x=2, y=21) # 2+42 = 44
  ~~~

  내친김에 직각삼각형의 직교하는 두 변의 길이로
  대각선을 계산하는 프로그램을 만들어 봅시다.

  ~~~
  pitagoras <- function(x, y){

   # 직각삼각형의 대각선길이의 제곱을 A 저장
    A <- x^2+y^2

   # A에 0.5제곱(루트)을 L에 저장  
    L <- A^0.5
   
   # 중간에 보여줄 값은 print()함수를 씁니다.
    print("직각 삼각형의 대각선의 길이는")

   # 보여줄 출력할 최종값을 정할때 return()함수를 씁니다. 
    return(L)

  }

  pitagoras(x=3, y=4)

  pitagoras(x=pi, y=2pi) # 원주율 3.14159...를 R에선 pi로 표기합니다.  
  ~~~

  이정도만 되어도 현상을 수학적으로 이해하고 R로 표현 할 수 있으면, 답을 도출하는 프로그램을 만드실 수가 있습니다.


#### 그래프 그려보기

- 함수와 그래프 패키지 `ggplot2`와의 관계
 
    왜 그래프를 그려보기 전에 함수를 만드는 방법을 배운 이유는....
  
    R에서 그래프에관한 `ggplot2`이라는 패키지가 유명한데요, 다른사람이 만든 함수다 라고 생각하면 이해하기 편해서 그래요.
    모든 R 패키지는 남들이 만들어 놓은 함수를 내가 다운받아 쓰는 개념 입니다.

    이제 그래프를 그려보겠습니다. 저번주에 못오신 분들을 위해 한번에 data.frame `df`를 만들어 볼게요.

    저번주에 `df`를 만드신게 남아 있으면 하실 필요 없어요.

  ~~~ R
  df <-
    data.frame(
      요일 = c("월","화", "수", "목", "금"),
      과일 = c("사과", "바나나", "두리안", "망고", "포도"),
      개수 = c(2, 4, 5, 12, 24)
    )
  ~~~

- 그래프 그리기
  이제 R에서 그래프를 그리는 함수를 써볼게요.
  우선 패키지 기능을 불러옵니다. 
  ~~~
  library(ggplot2)
  ~~~
  
  ggplot 함수를 써봅시다.
   
  구조: ggplot(data=데이터프레임, mapping = aes(x=변수1, y=변수2, ...))
  이런식으로 이루어 지는데요.

  data.frame은 벡터가 세로로 합쳐진거 라는거 기억하시죠? 벡터를 지정하는 col.names (열 이름)을 아래처럼 각 변수로 쓰시면 됩니다.

  ~~~
  ggplot(data=df, mapping = aes(x = 요일, y= 개수, color = 과일))
  ~~~

  자 그러면 축은 다 설정 했지만 뭔가 많이 썰렁하죠? 
  위 R코드는 **그래프를 그릴때 data는 df를 쓰고, 축은 x=요일, y=개수, color= 과일로 설정하겠다**
  라는 내용의 함수입니다.
  
  여기에 어떤 기하학적(geometric) 표현을 할건지 지정만 해주면 됩니다. 먼저 점그래프를 그려볼게요.

  ~~~
  ggplot(data=df, mapping = aes(x = 요일, y= 개수, color = 과일))+
   # 기하학적으로 점으로 그리는 함수
    geom_point()
  ~~~

  +를 쓴 뒤에는 투명한 비닐을 하나 씌우고 그 위에 다음 함수 그림을 그린다 생각하면 이해하기 편해요.

  ~~~
  ggplot(data=df, mapping = aes(x = 요일, y= 개수, color = 과일))+
    geom_point()+

   # 라벨 입력하기, 위에 정의한 축내용 덮어씌우기, 배경없이 하려면 geom_text
    geom_label(mapping = aes(label=과일, y=개수+1)) 
  ~~~
  
  ~~~
  ggplot(data=df, mapping = aes(x = 요일, y= 개수, color = 과일))+
    geom_point()+
    geom_label(mapping = aes(label=과일, y=개수+1))+
   
   # alpha는 불투명도
    geom_bar(stat = "identity", 
             mapping = aes(fill=과일), alpha = 0.3)
    ~~~

  이제 ggplot2에서 핵심적인 내용은 다 배우신겁니다.
  
  https://learninginnovation.duke.edu/wp-content/uploads/2020/07/R_ggplot2_cheatsheet.pdf

  위 주소는 ggplot2 다양한 함수를 포스터 형식으로 정리한 [**ggplot2 치트시트**](https://learninginnovation.duke.edu/wp-content/uploads/2020/07/R_ggplot2_cheatsheet.pdf) 입니다.

  이제 연습하시고 체득하시면 되요. (다시 어느정도 R 지식이 더 쌓이면 ggplot2 심화과정을 한번더 하겠습니다.)
  
  추천하는 R그래프 책은 표지에 사슴?이 그려져 있는 [**R graphics cookbook**](https://search.shopping.naver.com/book/catalog/32445547585?query=R%20%EA%B7%B8%EB%9E%98%ED%94%BD%20cookbook&NaPm=ct%3Dlhk6cins%7Cci%3D90651577772e509960b217dccdeaf3bcf6ac17d0%7Ctr%3Dboksl%7Csn%3D95694%7Chk%3Ddf3e52db6b57c8b23ad2d658aa74735e525a40c4) 입니다.

  직접 자기 데이터로만 써도 되고
  R에는 연습용으로 다양한 data.frame이 내장 되어 있습니다.
  
  ~~~
  data() # R 연습용 내장 data.frame 목록 보기
  ~~~

  대표적으로는 `iris`가 있죠.

  ~~~
  iris
  head(iris)
  ~~~
  
  데이터가 많기때문에 colname을 파악하기 힘듭니다. 이럴땐 `head()` 함수를 쓰면 맨위 5행(가로)만 보여주기 때문에 데이터 특징을 파악하기 편해요.

  이걸로 그래프를 그려볼게요.

  ~~~
  ggplot(data = iris, 
         mapping = aes(x=Species, y=Sepal.Width))+
    stat_summary(geom="bar", fun.data="mean_se")+
    stat_summary(geom="errorbar", fun.data="mean_se", width=0.5)+
    geom_jitter()
  ~~~

  여기서 stat_summary는 평균과 표준오차와 같은 것을 계산하면서 그리는 방법입니다.

  이것으로 그래프 그리는것을 마치겠습니다.
  다음에는 글자 데이터를 다루는 방법을 배우겠습니다.

------

### 6월 1주차 : 글자 데이터 다루기

저같은 경우 R 초보시절때 R에서 숫자데이터는 사친연산에 의해서 다루면 되니까 초중고등학교때 배운 지식을 가지고 금방 적응을 하는데, 글자는 어떻게 다뤄야 하는지 답답했습니다. 데이터 대부분이 숫자 아니면 글자이니까 글자도 매우 중요한 데이터인데 말이죠.

이번 시간은 글자를 어떻게 다루는지를 배우고, 간단한 프로그램(함수)을 만들어 볼껍니다.
글자는 기본적으로 글자를 나누거나, 붙이거나, 패턴인식, 글자길이세기 등 할 수 있습니다.

#### 글자 패턴서술하기 (정규표현식)
글자 패턴은 정규표현식(regular expression, regex)으로 나타낼 수 있습니다.
웬만한 컴퓨터 언어는 정규표현식이라는 방법으로 글자패턴을 서술 할수 있습니다.

- 정규표현식 기본 규칙
    
  규칙 1. 대괄호 안에 있는 나열된 글자는 or로 나열된 한글자로 인식한다  
  예) A or B or C : `[ABC]`
  
  규칙 2. 대괄호 열고 처음에 ^ 쓸 경우, 그 글자패턴을 제외한 한글자를 의미한다.  
  예) A or B or C를 제외한 나머지 문자 : `[^ABC]`  
  
  규칙 3. 대괄호 닫은 직후의 중괄호 안 숫자 두개는 대괄호패턴의 글자 갯수를 의미한다.  
  [A]{n, m}: 문자패턴A가 n개이상 m개 미만  
  예) c or d 가 1개 이상 4개 이하 : `[cd]{1,4}`  
  예) i or d 가 24개 이하 : `[id]{,24}`  
       

- 정규표현식의 특수한 표현들

   <table>
     <tr>
      <td>의미</td>
      <td>정규표현식</td>
     </tr>
     <tr>
      <td>모든 대문자</td>
      <td>[A-Z]</td>
     </tr>
     <tr>
      <td>모든 소문자</td>
      <td>[a-z]</td>
     </tr>
     <tr>
      <td>모든 숫자</td>
      <td>[0-9]</td>
     </tr>
     <tr>
      <td>모든 알파벳</td>
      <td>[A-Za-z]</td>
     </tr>
     <tr>
      <td>모든 대문자와 숫자</td>
      <td>[A-Z0-9]</td>
     </tr>
     <tr>
      <td>모든 소문자와 숫자</td>
      <td>[A-Z0-9]</td>
     </tr>
     <tr>
      <td>모든 알파벳과 숫자</td>
      <td>[A-Za-z0-9]</td>
     </tr>
     <tr>
      <td>어떠한 모든 문자</td>
      <td>.</td>
     </tr>
     <tr>
      <td>문자열의 맨처음</td>
      <td>^</td>
     </tr>
     <tr>
      <td>문자열의 맨마지막</td>
      <td>$</td>
     </tr>
     <tr>
      <td>tab으로 된 띄어쓰기</td>
      <td>\t</td>
     </tr>
  </table>

    더욱 더 많은 규칙들이 있고 컴퓨터 언어마다 조금 다르긴 하지만 공통적으로 많이 쓰이고 있는 수준에서 정리하자면 저정도가 됩니다.

    어디 웹페이지 가입 할 때 이메일을 이상하게 쓰면 경고창이 뜨죠? 
    보통 이메일 조소는 영어소문자로 다음의 구조를 가지는것을 이용해서
  
    <div align="center"> 
    아이디@서비스(abcde).주소(com, org , co.kr 등등)
    </div> 
  
    이메일의 문자패턴을 정규표현식으로 표현할수 있습니다.
  
    <div align="center">
  
    `[a-z0-9]{1,}@[a-z0-9]{1,}[.][a-z]{1,5}[.]{0,1}[a-z]{0,5}`
    
    </div> 
    여기서 `[a-z0-9]{1,}`는 `@` 다음의 `[a-z0-9]{1,}@[a-z0-9]{1,}[.][a-z]{1,3}[.]{0,1}[a-z]{0,3}`는 서비스 주소 구조를 나타냈습니다. 여기서`[.]`은 모든문자를 뜻하는`.` 와 다른 일반 온점을 의미합니다.


#### 문자와 관련된 함수들

- 문자 패턴인식
  R에서 문자를 다루는 패키지 `stringr`를 불러옵니다.
  ~~~
  library("stringr")
  ~~~

  그러면 문자를 인식하여 참거짓을 출력하는 함수를 써보겠습니다.

  정규표현식 또한 character 유형이므로, 쌍따옴표 또는 따옴표 안에 써야 합니다.

  ~~~
  str_detect(string = "chogj88@rda.go.kr", 
             pattern = "[a-z0-9]{1,}@[a-z0-9]{1,}[.][a-z]{1,3}[.]{0,1}[a-z]{0,3}"
            )
  ~~~
  
  논리값들을 출력하는 함수들은 나아아아중에 배울 if문에서 강력한 판단기준이 되기 때문에 꼭 기억해 두시면 좋아요.(엑셀의 if함수와 기능이 같습니다)  
  또한 DNA에서 해당 부분이 있는지 판단할 수도 있겠죠.

  ~~~
  dna <-  c("ATACGGGTCCCAAATCCT", "AATTTTCCTTAATTCCTATT")
  str_detect(string = dna, 
             pattern = "AA[AT]{2,2}CC" # AAWWCC
            )
  ~~~

- 문자 치환하기

  소문자를 모두 대문자로 대문자를 모두 소문자로 치환하는 함수도 있습니다.  
  `toupper()`와 `tolower()` 함수 인데요 다음과 같이 쓸수 있습니다.

  ~~~
  toupper("asAFbvdFAfdafd") #아무 대소문자나 입력
  tolower("asAFbvdFAfdafd")
  ~~~

  그리고 특정 문자를 인식해서 다른 문자로 바꿔주는 함수도 있습니다.

  ~~~
  dna <- "CCACCTTAGTAC"
  gsub(pattern = "ACCT", replacement= "ggat", x = dna)
  ~~~

- 문자 나누기와 붙이기

  문자 나누기는 `strsplit()`, 문자 붙이기는 `paste()` 함수를 사용하면 됩니다.

  ~~~
  # 문자열 나누기
  string <- "R is programing langage"
  strsplit(string, "[aeiou]") # 모음 기준으로 문자열 나누기
  split_string <- strsplit(string, " ") # 공백을 기준으로 문자열 나누기
  split_string

  # 문자열 붙이기
  paste("A","B","C", sep = ";") #길이가 1인 문자백터 3개 붙이기
  paste(split_string, collapse = " ") # 문자열로 이루어진 벡터 1개 공백으로 붙이기
  ~~~

- 문자 길이 측정
  문자 길이 측정은 `nchar()` 함수를 쓰면 됩니다.

  ~~~
  nchar("ABC")
  ~~~

#### 응용해서 GC ratio 측정하는 프로그램 만들어 보기

- 조건문 if 
  조건문 if else 하나 배워봅시다.
  ~~~
  number <- 2
  
  number == 2

  if(number ==2 ){ # 첫 중괄호에서는 참일때 실행 
    print("입력된 숫자는 2 입니다.") 
  } else { # 만약 거짓일 경우 else를 추가하고 중괄호에서 거짓일때 실행할 내용 입력
    print("입력된 숫자는 2 가 아닙니다.")
  }
  ~~~
  
  이제 마지막으로 오늘 배운 내용으로 GC ratio 계산하는 프로그램을 만들어 보겠습니다.

  ~~~

  gc_ratio_cal <- function(dna){

    dna <- toupper(dna) 
    dna <- gsub(" ", "", dna)

    if(str_detect(string = dna, 
                  pattern = "[^ATCG]")){
      stop("올바른 DNA 정보가 아닙니다. 염기서열(ACTG)만 입력해주세요.")
    }
  
    full_length <- nchar(dna)
    gc <- gsub("[CG]", "", dna)

    gc_length <- nchar(gc)

    gc_ratio <- gc_length/full_length*100

    message <- paste("GC ratio는", gc_ratio, "% 입니다.")

    print(message)

    return(gc_ratio)

    }

  gc_ratio_cal("fdsfATGCGGT")
  gc_ratio_cal("ATGC GGTT")
  gc_ratio_cal("aaaatttccccccccgggg")
  ~~~

이것으로 금주에 배운 모든 내용을 써서 그럴듯한 프로그램을 하나 만들어 봤습니다.
다음 시간에는 숫자와 관련된 연산자와, 데이터 구조를 좀더 자세히 배우겠습니다.