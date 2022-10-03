# newebpay
串接藍新金流 demo

## 日誌 2022/10/3 ##

付款功能已完成，但無法轉址回付款成功頁面，推測錯誤為，notify、return 的網址應該指向 server 的位置，而非 github page
再由 router redirect 回成功頁面，實際測試後會有 cors 的問題，所以暫時還沒測試。
