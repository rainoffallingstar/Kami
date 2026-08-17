#import "kami.typ": kami-document
#import "themes.typ": one-pager
#set document(title: "{{文档标题}}", author: "{{作者}}")
#show: body => kami-document(body, locale: "cn", margin: (top: 15mm, right: 18mm, bottom: 15mm, left: 18mm), body-size: 10pt, leading: 0.45em)
#one-pager("cn")
