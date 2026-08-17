#import "kami.typ": kami-document
#import "themes.typ": portfolio
#set document(title: "{{이름}} · 포트폴리오", author: "{{이름}}")
#show: body => kami-document(body, locale: "ko", margin: (top: 20mm, right: 22mm, bottom: 22mm, left: 22mm), body-size: 10pt, leading: 0.52em)
#portfolio("ko")
