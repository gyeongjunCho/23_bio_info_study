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
3주차  
4주차  

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
        요일 <- c("월", "화", "수", "목", "금")>
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
        요일_char <- as.charactor(요일) # charactor로 강제변환
        요일_char 
        order(요일) # factor라서 요일 월화수목금을 1 2 3 4 5 순으로 인식
        order(요일_char) # 요일 월화수목금을 글자순서인 5(금) 4(목) 3(수) 1(월) 2(화) 

        개수_char <- as.charactor(개수) #charactor로의 강제변환
        개수_char
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

        으로 표기됩니다. 두개의 차이점이 보이시나요? nummeric은 따옴표 없이 출력되고, 글자는 따옴표로 출력이 됩니다.

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

      벡터인지 data.frame인지 확인하는 함수는 `is.vector()`, `is.data.frame`함수가 있습니다.
        ~~~ R
        is.data.frame(df)       # TRUE 반환
        is.data.frame(df$요일)   # FALSE 반환
        
        is.vector(df)           # FALSE 반환
        is.vector(df$요일)       # TRUE 반환
        is.vector(df$과일)       # TRUE 반환
        is.vector(df$개수)       # TRUE 반환
        ~~~

  4. 엑셀 이용 시 data.frame 구조를 염두할 것
     여기까지 살펴보면 엑셀로 저장했다가, data.frame으로 전환하여 사용할때 열(세로열, column)로 정리를 해야 데이터 유형에 맞게 정리 할 수 있음을 알수 있습니다. (데이터가 많아지면 위아래로 긴 형태가 되겠죠)
     
     그리고 엑셀은 마이크로소프트 사가 만든 스프레드시트 프로그램이라 전용 읽기 프로그램 또는 쓰기 프로그램이랑 호환이 됩니다. 때문에 xlsx, xls 확장자로 저장하시되, R로 전환하고 싶은 파일의 sheet만 csv(Comma Separated Values)로 저장하면 됩니다. 
     ><div align="center"> -- csv 파일 저장 방법 -- </div>  
     ><br> 
     > 1. 좌상단 '파일' 메뉴 클릭  <br> 
     > 2. '다른이름으로 저장' 클릭  <br> 
     > 3. '이 PC' 클릭  <br> 
     > 4. 저장메뉴 창이 뜨면 폴더 및 저장이름 설정 <br>  
     > 5. 아래 'Excel 통합문서(*.xlsx)' 클릭   <br> 
     > 6. 'CSV (쉼표로 분리)(*.csv)' 클릭하여 설정 후 저장 

다음주는 오늘 만든 data.frame으로  ggplot을 통해 그래프 그리는 것을 해 보겠습니다.

------