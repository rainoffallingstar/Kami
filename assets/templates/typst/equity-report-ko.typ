#import "kami.typ": kami-document
#import "themes.typ": equity-report
#set document(title: "{{회사명}} · 주식 리서치", author: "{{작성자}}")
#show: body => kami-document(body, locale: "ko", margin: (top: 16mm, right: 18mm, bottom: 18mm, left: 18mm), body-size: 10pt, leading: 0.52em)
#equity-report("ko")
