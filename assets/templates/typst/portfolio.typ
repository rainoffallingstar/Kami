#import "kami.typ": kami-document
#import "themes.typ": portfolio
#set document(title: "{{姓名}} · 作品集", author: "{{姓名}}")
#show: body => kami-document(body, locale: "cn", margin: (top: 20mm, right: 22mm, bottom: 22mm, left: 22mm), body-size: 10pt, leading: 0.5em)
#portfolio("cn")
