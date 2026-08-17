#import "kami.typ": kami-document
#import "themes.typ": letter
#set document(title: "{{편지 제목}}", author: "{{작성자}}")
#show: body => kami-document(body, locale: "ko", margin: (top: 20mm, right: 22mm, bottom: 20mm, left: 22mm), body-size: 10.5pt, leading: 0.55em)
#letter("ko")
