#import "kami.typ": kami-document
#import "themes.typ": portfolio
#set document(title: "{{NAME}} · Portfolio", author: "{{NAME}}")
#show: body => kami-document(body, locale: "en", margin: (top: 20mm, right: 22mm, bottom: 22mm, left: 22mm), body-size: 10pt, leading: 0.5em)
#portfolio("en")
