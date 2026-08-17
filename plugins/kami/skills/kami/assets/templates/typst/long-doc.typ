#import "kami.typ": kami-document
#import "themes.typ": long-doc
#set document(title: "{{文档标题}}", author: "{{作者}}")
#show: body => kami-document(body, locale: "cn", margin: (top: 20mm, right: 22mm, bottom: 22mm, left: 22mm), body-size: 10.5pt, leading: 0.55em)
#long-doc("cn")
