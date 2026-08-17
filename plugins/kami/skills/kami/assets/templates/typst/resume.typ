#import "kami.typ": kami-document
#import "themes.typ": resume
#set document(title: "{{姓名}} · 简历", author: "{{姓名}}")
#show: body => kami-document(body, locale: "cn", margin: (top: 11mm, right: 13mm, bottom: 11mm, left: 13mm), body-size: 9.4pt, leading: 0.42em)
#resume("cn")
