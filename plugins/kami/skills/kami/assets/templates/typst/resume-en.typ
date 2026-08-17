#import "kami.typ": kami-document
#import "themes.typ": resume
#set document(title: "{{NAME}} · Resume", author: "{{NAME}}")
#show: body => kami-document(body, locale: "en", margin: (top: 11mm, right: 13mm, bottom: 11mm, left: 13mm), body-size: 9.4pt, leading: 0.42em)
#resume("en")
