#import "kami.typ": kami-document
#import "themes.typ": one-pager
#set document(title: "{{DOC_TITLE}}", author: "{{AUTHOR}}")
#show: body => kami-document(body, locale: "en", margin: (top: 15mm, right: 18mm, bottom: 15mm, left: 18mm), body-size: 10pt, leading: 0.45em)
#one-pager("en")
