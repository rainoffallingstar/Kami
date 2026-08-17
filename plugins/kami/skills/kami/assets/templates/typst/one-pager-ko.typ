#import "kami.typ": kami-document
#import "themes.typ": one-pager
#set document(title: "{{문서 제목}}", author: "{{작성자}}")
#show: body => kami-document(body, locale: "ko", margin: (top: 15mm, right: 18mm, bottom: 15mm, left: 18mm), body-size: 10pt, leading: 0.48em)
#one-pager("ko")
