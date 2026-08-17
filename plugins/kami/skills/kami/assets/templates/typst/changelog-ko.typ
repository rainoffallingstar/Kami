#import "kami.typ": kami-document
#import "themes.typ": changelog
#set document(title: "{{프로젝트 이름}} · 변경 이력", author: "{{작성자}}")
#show: body => kami-document(body, locale: "ko", margin: (top: 16mm, right: 18mm, bottom: 18mm, left: 18mm), body-size: 10pt, leading: 0.52em)
#changelog("ko")
