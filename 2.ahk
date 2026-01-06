#Requires AutoHotkey v1
#Include Rufaydium.ahk
#Persistent ; 스크립트가 종료되지 않고 백그라운드에서 실행되도록 유지

; 매분마다 시간 확인하여 새벽 3시에 작업 실행
SetTimer, CheckTime, 60000 
return

CheckTime:
    ; 현재 시간이 03시 00분인지 확인
    if (A_Hour = 03 && A_Min = 00) {
        RunTask()
        Sleep, 60000 ; 3시 00분 동안 중복 실행되지 않도록 1분 대기
    }
return

RunTask() {
    Chrome := new Rufaydium("chromedriver.exe")
    Page := Chrome.NewSession()

    ; 1. 사이트 접속 및 로그인
    Page.Navigate("https://tcafe21.com/")
    Sleep, 2000 ; 페이지 로딩 대기

    SafeClick(Page, "#migration-popup > div:nth-child(3) > button:nth-child(2)") ; 팝업 닫기
    
    SafeClick(Page, "#mb_id")
    Sleep, 200
    Send, mintcuki
    
    SafeClick(Page, "#mb_password")
    Sleep, 200
    Send, 015314ab
    Send, {Enter}
    Sleep, 2000 ; 로그인 처리 대기

    ; 2. 출석 체크 페이지 이동
    Page.Navigate("https://tcafe21.com/attendance/")
    Sleep, 2000

    ; 3. 룰렛 버튼 클릭 (ID 또는 클래스 시도)
    if IsObject(btn := Page.querySelector("#spin-btn"))
        btn.Click()
    else if IsObject(btn := Page.querySelector(".spin-button"))
        btn.Click()
    
    Sleep, 3000 ; 결과 확인 대기
    SafeClick(Page, "#result > div > button") ; 결과창 닫기

    Page.Quit() ; 작업 완료 후 브라우저 세션 종료
    ; Chrome.Driver.Exit() ; 필요 시 드라이버 프로세스까지 완전 종료하려면 주석 해제
}

; --- 편의 함수 ---
SafeClick(Session, Selector) {
    if IsObject(el := Session.querySelector(Selector))
        el.Click()
}
