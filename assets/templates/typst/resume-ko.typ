#import "kami.typ": kami-document
#import "themes.typ": resume
#set document(title: "{{이름}} · 이력서", author: "{{이름}}")
#show: body => kami-document(body, locale: "ko", margin: (top: 11mm, right: 13mm, bottom: 11mm, left: 13mm), body-size: 9.4pt, leading: 0.45em)
#resume("ko")
