#Requires AutoHotkey v1
#Include Rufaydium.ahk
; --- 편의 함수 정의 ---
SafeClick(Session, Selector) {
if IsObject(el := Session.querySelector(Selector))
el.Click()
}
Chrome := new Rufaydium("chromedriver.exe")
Page := Chrome.NewSession()
Page.Navigate("https://tcafe21.com/ ")
Sleep, 1000
; 함수만 호출하면 됩니다.
SafeClick(Page, "#migration-popup > div:nth-child(3) > button:nth-child(2)")
Sleep, 1000
SafeClick(Page, "#mb_id")
sleep, 200
send, mintcuki
SafeClick(Page, "#mb_password")
sleep, 200
send, 015314ab
send, {Enter}
SafeClick(Page, "#migration-popup > div:nth-child(3) > button:nth-child(2)")
Sleep, 1000
SafeClick(Page, "#thema_wrapper > div > aside.main-sidebar > section > div:nth-child(2) > div.sidebar-icon.text-center > a:nth-child(4) > i")
Sleep, 5000
Page.Navigate("https://tcafe21.com/attendance/ ")
; 페이지가 완전히 뜰 때까지 대기 (필수)
Sleep, 2000
; 이제 프레임 안이 아니라, 그냥 이 페이지에 버튼이 있는 상태입니다.
; 바로 찾아서 클릭하면 됩니다.
if IsObject(btn := Page.querySelector("#spin-btn"))
{
btn.Click()
;MsgBox, 직접 이동해서 클릭 성공!
}
else
{
; 혹시 ID가 아니라 클래스로 찾아야 할 수도 있으니 예비책
if IsObject(btn := Page.querySelector(".spin-button"))
{
btn.Click()
;MsgBox, 클래스로 찾아서 클릭 성공!
}
else
{
;MsgBox, 직접 이동했는데도 버튼을 못 찾았습니다.n1. 로그인이 풀렸는지 확인하세요.n2. 주소가 정확한지 확인하세요.
}
}
SafeClick(Page, "#result > div > button")
sleep, 200