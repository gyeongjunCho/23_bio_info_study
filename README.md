<div style="text-align: center">

# 23년도 국립농업과학원 바이오인포메틱스 연구회 R 자료실

</div>


<div style="text-align: right">  국립농업과학원 농업미생물과 </div>

<div style="text-align: right"> 조경준 </div>

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

<span style="color:red">

<div style="text-align: center">

### 주의사항

이 장소는 웹에 오픈되어 있습니다. 보안에 직접적으로 연관된 자료를 공유해서는 안됩니다.

</div>

</span>

------

<br>

## 목차

<br>

### 5월

1. [1주차 : R, Rstudio 설치 Windows 10 이상 기준](#5월-1주차--r-rstudio-설치-windows-10-이상-기준)
2. 2주차
3. 3주차
4. 4주차

<br>

------

<br>

### 5월 1주차 : R, Rstudio 설치 (Windows 10 이상 기준)

이미 노트북에 Rstudio를 설치하신분은 R설치와 Rstudio 설치를 안하셔도 됩니다.

자주 사용하게 될 패키지 설치로 넘어가 주세요.

<br>
   

- R 설치  

  1. R 개발하는 [공식 홈페이지](https://cran.r-project.org/bin/windows/base/old/)에서 `R 4.2.3`을 누릅니다.
  
  2. `R-4.2.3-win.exe`을 누르면 설치프로그램이 다운로드 됩니다.

  3. `R-4.2.3-win.exe`를 다운로드한 폴더에 가서 더블클릭 합니다.

  4. `실행`, 한국어 설정 후 `다음`을 눌러서  
   `C:\Program Files\R\R-4.2.3`에 설치를 진행해 주세요.

        <br>

   ><div style="text-align: center"> -- 토막상식 -- </div>  
   ><br>
   >
   >요즘은 대부분 버전을 `A.B.C`으로 표기하는데  
   >
   >`A`는 프로그램에 `큰 변화/기능추가` 가 있을 때  
   `B`는 프로그램에 `작은 변화/기능추가` 가 있을 때  
   `C`는 버그 고쳤을 때  
   >
   >숫자가 하나씩 올라가요.  
   >그래서 개인적으로는 `C`부분이 0인경우 `A.B`의 초기버전이라 버그가 많아서 사용을 피하는 편입니다.   

   
   <br>
   <br>

- Rstudio 설치

    R만 설치하면 무슨 70~80 년대 영화에서나 나올 법한 검은창에서 작업을 해야 됩니다. 그래서 사용하기 편하도록 기능들을 추가하는 Rstudio를 설치 해봅시다.

  1. Rstudio를 개발하는 [Posit 다운로드 페이지](https://posit.co/downloads/)에 방문하여  `Rstudio-desktop free` 버전을 다운로드 받습니다.
        * Rstudio-desktop `free` 파란색 버튼 클릭 
        * `DOWNLOAD RSTUDIO DESKTOP FOR WINDOWS` 파란색 버튼 클릭

  2. `RStudio-2023.03.0-386.exe`를 다운로드 받은 폴더로 가서 더블클릭

  3. `실행`버튼을 누르면 진행바가 채워지면서 설치 완료.

  4. Rstudio를 실행합니다.

  5. `Choose a specific version` 클릭 

  6. `C:\Program Files\R\R-4.2.3` 클릭

  7. `OK` 클릭

  8. 설치가 완료 됩니다.

    <br>
    <br>

- R에서 자주 쓰게될 패키지 설치

    1. Rstudio 실행후 좌상단 `File`, `New File`, `R script` 순으로 클릭

    2. 좌측이 둘로 나눠지며 좌상단에 메모장 같은게 형성됩니다.

    3. 아래 코드를 복사 붙여 넣기 하거나, 타이핑해서 입력  

        ~~~ R
        pkg <- c("tidyverse", "reshape", "reshape2", "stringr")
        install.packages(pkg)
        ~~~
            
    4. 각 코드 줄에 커서를 클릭해서 놓고 컨트롤 엔터

    5. 해당줄이 좌 하단의 R 콘솔로 내용이 넘어가며 코드가 대화형으로 진행, 자주 사용하게될 패키지가 설치 됩니다.

------------------------------