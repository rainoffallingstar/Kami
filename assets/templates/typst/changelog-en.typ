#import "kami.typ": kami-document
#import "themes.typ": changelog
#set document(title: "{{PROJECT NAME}} · Changelog", author: "{{AUTHOR}}")
#show: body => kami-document(body, locale: "en", margin: (top: 16mm, right: 18mm, bottom: 18mm, left: 18mm), body-size: 10pt, leading: 0.5em)
#changelog("en")
