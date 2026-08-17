#import "kami.typ": kami-document
#import "themes.typ": long-doc
#set document(title: "{{문서 제목}}", author: "{{작성자}}")
#show: body => kami-document(body, locale: "ko", margin: (top: 20mm, right: 22mm, bottom: 22mm, left: 22mm), body-size: 10.5pt, leading: 0.55em)
#long-doc("ko")
